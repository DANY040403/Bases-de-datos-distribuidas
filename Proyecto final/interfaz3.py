

import mysql.connector
from mysql.connector import Error
import tkinter as tk
from tkinter import messagebox, ttk
import random

DB_CONFIG = {
    'host': '127.0.0.1',
    'user': 'daniel',
    'password': 'admin123',
    'database': 'veterinaria'
}

def connect_db():
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        if conn.is_connected():
            return conn
    except Error as e:
        messagebox.showerror("Error", f"Error conectando a base de datos: {e}")
    return None

def call_procedure(conn, proc_name, args):
    cursor = conn.cursor()
    try:
        cursor.callproc(proc_name, args)
        for result in cursor.stored_results():
            rows = result.fetchall()
            return rows
        conn.commit()
        return None
    except Error as e:
        messagebox.showerror("Error", f"Error ejecutando procedimiento {proc_name}: {e}")
    finally:
        cursor.close()

class DuenioApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Interfaz Dueño - Gestión de Citas")
        self.root.geometry("800x600")
        self.conn = connect_db()
        if self.conn is None:
            messagebox.showerror("Error", "No se pudo conectar a la base de datos. Verifique la configuración.")
            self.root.destroy()
            return

        self.current_id_duenio = None

        self.build_login_ui()

    def build_login_ui(self):
        self.clear_frame()
        frame = tk.Frame(self.root)
        frame.pack(pady=100)

        tk.Label(frame, text="Ingrese su ID de Dueño:", font=("Arial", 14)).pack(pady=10)
        self.id_entry = tk.Entry(frame, font=("Arial", 14))
        self.id_entry.pack(pady=5)
        submit_btn = tk.Button(frame, text="Ingresar", font=("Arial", 12), command=self.login)
        submit_btn.pack(pady=10)

    def login(self):
        try:
            id_duenio = int(self.id_entry.get().strip())
        except ValueError:
            messagebox.showwarning("Entrada inválida", "Por favor ingrese un ID válido (entero).")
            return

        rows = call_procedure(self.conn, "sp_get_duenio", (id_duenio,))
        if rows and len(rows) > 0:
            self.current_id_duenio = id_duenio
            self.build_main_ui()
        else:
            messagebox.showerror("Error", f"No se encontró dueño con ID {id_duenio}")

    def build_main_ui(self):
        self.clear_frame()

        label = tk.Label(self.root, text=f"Bienvenido Dueño ID: {self.current_id_duenio}", font=("Arial", 14))
        label.pack(pady=10)

        btn_frame = tk.Frame(self.root)
        btn_frame.pack(pady=10)

        btn_new_cita = tk.Button(btn_frame, text="Crear Nueva Cita", width=20, command=self.create_cita_ui)
        btn_new_cita.grid(row=0, column=0, padx=10)

        btn_view_cita = tk.Button(btn_frame, text="Ver Mis Citas", width=20, command=self.view_citas_ui)
        btn_view_cita.grid(row=0, column=1, padx=10)

        # Frame para contenido dinámico
        self.content_frame = tk.Frame(self.root)
        self.content_frame.pack(fill="both", expand=True, pady=10, padx=10)

    def clear_frame(self):
        for widget in self.root.winfo_children():
            widget.destroy()

    def create_cita_ui(self):
        for w in self.content_frame.winfo_children():
            w.destroy()

        tk.Label(self.content_frame, text="Crear Nueva Cita", font=("Arial", 14)).pack(pady=10)

        form_frame = tk.Frame(self.content_frame)
        form_frame.pack(pady=5)

        self.entries = {}

        labels = ['Fecha (AAAA-MM-DD):', 'Hora (HH:MM:SS):', 'Motivo:']
        for i, label_text in enumerate(labels):
            lbl = tk.Label(form_frame, text=label_text)
            lbl.grid(row=i, column=0, sticky="e", pady=4, padx=5)
            ent = tk.Entry(form_frame, width=30)
            ent.grid(row=i, column=1, pady=4, padx=5)
            self.entries[label_text] = ent

        info_label = tk.Label(self.content_frame, text="ID Sucursal e ID Consulta se asignan automáticamente.", fg="blue")
        info_label.pack(pady=5)

        submit_btn = tk.Button(self.content_frame, text="Guardar Cita", command=self.submit_new_cita)
        submit_btn.pack(pady=10)

    def submit_new_cita(self):
        fecha = self.entries['Fecha (AAAA-MM-DD):'].get().strip()
        hora = self.entries['Hora (HH:MM:SS):'].get().strip()
        motivo = self.entries['Motivo:'].get().strip()

        if not (fecha and hora and motivo):
            messagebox.showwarning("Datos incompletos", "Por favor complete todos los campos.")
            return

        try:
            cursor = self.conn.cursor()
            cursor.execute("SELECT idSucursal FROM Sucursal")
            sucursales = [row[0] for row in cursor.fetchall()]
            if not sucursales:
                messagebox.showerror("Error", "No hay sucursales registradas en la base de datos.")
                cursor.close()
                return
            idSucursal = random.choice(sucursales)
        except Error as e:
            messagebox.showerror("Error", f"Error obteniendo sucursales: {e}")
            return

        try:
            cursor.execute("SELECT idConsulta FROM Consulta")
            consultas = [row[0] for row in cursor.fetchall()]
            cursor.close()
            if not consultas:
                messagebox.showerror("Error", "No hay consultas registradas en la base de datos.")
                return
            idConsulta = random.choice(consultas)
        except Error as e:
            messagebox.showerror("Error", f"Error obteniendo consultas: {e}")
            return

        try:
            cursor = self.conn.cursor()
            cursor.execute("SELECT IFNULL(MAX(idCita), 0) FROM Cita")
            max_id = cursor.fetchone()[0]
            cursor.close()
            new_idCita = max_id + 1
        except Error as e:
            messagebox.showerror("Error", f"No se pudo obtener nuevo ID para cita: {e}")
            return

        try:
            call_procedure(self.conn, "sp_insert_cita",
                (new_idCita, fecha, hora, motivo, self.current_id_duenio, idSucursal, idConsulta))
            messagebox.showinfo("Éxito", f"Cita creada correctamente.\nID Sucursal: {idSucursal}\nID Consulta: {idConsulta}")
            for ent in self.entries.values():
                ent.delete(0, tk.END)
        except Exception as e:
            messagebox.showerror("Error", f"No se pudo crear cita: {e}")

    def view_citas_ui(self):
        for w in self.content_frame.winfo_children():
            w.destroy()

        tk.Label(self.content_frame, text="Mis Citas", font=("Arial", 14)).pack(pady=10)

        try:
            cursor = self.conn.cursor()
            query = """
                SELECT idCita, fecha, hora, motivo, idSucursal, idConsulta
                FROM Cita
                WHERE idDuenio = %s
                ORDER BY fecha DESC, hora DESC
            """
            cursor.execute(query, (self.current_id_duenio,))
            rows = cursor.fetchall()
            cursor.close()

            columns = ['idCita', 'fecha', 'hora', 'motivo', 'idSucursal', 'idConsulta']

            if not rows:
                tk.Label(self.content_frame, text="No tienes citas registradas.", fg="red").pack()
                return

            tree_frame = tk.Frame(self.content_frame)
            tree_frame.pack(fill="both", expand=True)

            tree = ttk.Treeview(tree_frame, columns=columns, show='headings')
            vsb = ttk.Scrollbar(tree_frame, orient="vertical", command=tree.yview)
            tree.configure(yscrollcommand=vsb.set)
            vsb.pack(side='right', fill='y')
            tree.pack(fill="both", expand=True)

            for col in columns:
                tree.heading(col, text=col)
                tree.column(col, width=100, anchor='center')

            for row in rows:
                tree.insert("", "end", values=row)

        except Error as e:
            messagebox.showerror("Error", f"No se pudieron obtener las citas: {e}")

def main():
    root = tk.Tk()
    app = DuenioApp(root)
    root.mainloop()

if __name__ == "__main__":
    main()


