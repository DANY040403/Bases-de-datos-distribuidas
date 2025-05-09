

import mysql.connector
from mysql.connector import Error
import tkinter as tk
from tkinter import messagebox, ttk, simpledialog

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
        messagebox.showerror("Error", f"Error connecting to database: {e}")
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
        messagebox.showerror("Error", f"Error executing procedure {proc_name}: {e}")
    finally:
        cursor.close()

class VeterinaryApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Veterinaria")
        self.root.geometry("900x600")
        self.conn = connect_db()
        if self.conn is None:
            messagebox.showerror("Error", "No se pudo conectar a la base de datos. Verifique la configuración.")
            self.root.destroy()
            return

        self.current_table = None

        self.table_schemas = {
            "Duenio": {
                "id_field": "idDuenio",
                "fields": [
                    ("idDuenio", "int"),
                    ("telefono", "str"),
                    ("nombre", "str")
                ],
                "proc_insert": "sp_insert_duenio",
                "proc_select": "sp_get_duenio",
                "proc_update": "sp_update_duenio",
                "proc_delete": "sp_delete_duenio",
                "display_cols": ['idDuenio', 'telefono', 'nombre']
            },
            "Sucursal": {
                "id_field": "idSucursal",
                "fields": [
                    ("idSucursal", "int"),
                    ("nombre", "str"),
                    ("ubicacion", "str")
                ],
                "proc_insert": "sp_insert_sucursal",
                "proc_select": "sp_get_sucursal",
                "proc_update": "sp_update_sucursal",
                "proc_delete": "sp_delete_sucursal",
                "display_cols": ['idSucursal', 'nombre', 'ubicacion']
            },
            "Veterinario": {
                "id_field": "idVeterinario",
                "fields": [
                    ("idVeterinario", "int"),
                    ("nombre", "str"),
                    ("telefono", "str"),
                    ("especialidad", "str")
                ],
                "proc_insert": "sp_insert_veterinario",
                "proc_select": "sp_get_veterinario",
                "proc_update": "sp_update_veterinario",
                "proc_delete": "sp_delete_veterinario",
                "display_cols": ['idVeterinario', 'nombre', 'telefono', 'especialidad']
            },
            "Cosmetico": {
                "id_field": "idCosmetico",
                "fields": [
                    ("idCosmetico", "int"),
                    ("tipo_Cosmetico", "str"),
                    ("precio", "float"),
                    ("cantidad", "int"),
                    ("idSucursal", "int")
                ],
                "proc_insert": "sp_insert_cosmetico",
                "proc_select": "sp_get_cosmetico",
                "proc_update": "sp_update_cosmetico",
                "proc_delete": "sp_delete_cosmetico",
                "display_cols": ['idCosmetico', 'tipo_Cosmetico', 'precio', 'cantidad', 'idSucursal']
            },
            "Alimento": {
                "id_field": "idAlimento",
                "fields": [
                    ("idAlimento", "int"),
                    ("nombre", "str"),
                    ("precio", "float"),
                    ("idSucursal", "int")
                ],
                "proc_insert": "sp_insert_alimento",
                "proc_select": "sp_get_alimento",
                "proc_update": "sp_update_alimento",
                "proc_delete": "sp_delete_alimento",
                "display_cols": ['idAlimento', 'nombre', 'precio', 'idSucursal']
            },
            "Consulta": {
                "id_field": "idConsulta",
                "fields": [
                    ("idConsulta", "int"),
                    ("estado", "str"),
                    ("insumos", "str"),
                    ("diagnostico", "str")
                ],
                "proc_insert": "sp_insert_consulta",
                "proc_select": "sp_get_consulta",
                "proc_update": "sp_update_consulta",
                "proc_delete": "sp_delete_consulta",
                "display_cols": ['idConsulta', 'estado', 'insumos', 'diagnostico']
            },
            "Venta": {
                "id_field": "idVenta",
                "fields": [
                    ("idVenta", "int"),
                    ("total", "float"),
                    ("metodoPago", "str"),
                    ("fechaHora", "str"),
                    ("idSucursal", "int")
                ],
                "proc_insert": "sp_insert_venta",
                "proc_select": "sp_get_venta",
                "proc_update": "sp_update_venta",
                "proc_delete": "sp_delete_venta",
                "display_cols": ['idVenta', 'total', 'metodoPago', 'fechaHora', 'idSucursal']
            },
            "Mascota": {
                "id_field": "idMascota",
                "fields": [
                    ("idMascota", "int"),
                    ("nombre", "str"),
                    ("tipo_animal", "str"),
                    ("fechaNacimiento", "str"),
                    ("sexo", "str"),
                    ("idVeterinario", "int")
                ],
                "proc_insert": "sp_insert_mascota",
                "proc_select": "sp_get_mascota",
                "proc_update": "sp_update_mascota",
                "proc_delete": "sp_delete_mascota",
                "display_cols": ['idMascota', 'nombre', 'tipo_animal', 'fechaNacimiento', 'sexo', 'idVeterinario']
            },
            "Tratamiento": {
                "id_field": "idTratamiento",
                "fields": [
                    ("idTratamiento", "int"),
                    ("medicamento", "str"),
                    ("cuidados", "str"),
                    ("idMascota", "int")
                ],
                "proc_insert": "sp_insert_tratamiento",
                "proc_select": "sp_get_tratamiento",
                "proc_update": "sp_update_tratamiento",
                "proc_delete": "sp_delete_tratamiento",
                "display_cols": ['idTratamiento', 'medicamento', 'cuidados', 'idMascota']
            },
            "Cita": {
                "id_field": "idCita",
                "fields": [
                    ("idCita", "int"),
                    ("fecha", "str"),
                    ("hora", "str"),
                    ("motivo", "str"),
                    ("idDuenio", "int"),
                    ("idSucursal", "int"),
                    ("idConsulta", "int")
                ],
                "proc_insert": "sp_insert_cita",
                "proc_select": "sp_get_cita",
                "proc_update": "sp_update_cita",
                "proc_delete": "sp_delete_cita",
                "display_cols": ['idCita', 'fecha', 'hora', 'motivo', 'idDuenio', 'idSucursal', 'idConsulta']
            },
            "Servicio": {
                "id_field": "idServicio",
                "fields": [
                    ("idServicio", "int"),
                    ("tipo_Servicio", "str"),
                    ("costo", "float"),
                    ("descripcion", "str"),
                    ("idConsulta", "int"),
                    ("idMascota", "int")
                ],
                "proc_insert": "sp_insert_servicio",
                "proc_select": "sp_get_servicio",
                "proc_update": "sp_update_servicio",
                "proc_delete": "sp_delete_servicio",
                "display_cols": ['idServicio', 'tipo_Servicio', 'costo', 'descripcion', 'idConsulta', 'idMascota']
            }
        }

        self.build_ui()

    def build_ui(self):
        top_frame = tk.Frame(self.root)
        top_frame.pack(side="top", fill="x", padx=10, pady=5)

        tk.Label(top_frame, text="Selecciona tabla:", font=("Arial", 12)).pack(side="left")

        self.table_var = tk.StringVar()
        self.table_combo = ttk.Combobox(top_frame, textvariable=self.table_var, values=list(self.table_schemas.keys()), state="readonly")
        self.table_combo.pack(side="left", padx=5)
        self.table_combo.bind("<<ComboboxSelected>>", self.on_table_select)

        self.input_frame = tk.Frame(self.root)
        self.input_frame.pack(side="top", fill="x", padx=10, pady=5)

        button_frame = tk.Frame(self.root)
        button_frame.pack(side="top", fill="x", padx=10, pady=5)

        self.btn_create = tk.Button(button_frame, text="Crear", command=self.create_record)
        self.btn_create.pack(side="left", padx=5)
        self.btn_read = tk.Button(button_frame, text="Leer", command=self.read_record)
        self.btn_read.pack(side="left", padx=5)
        self.btn_update = tk.Button(button_frame, text="Actualizar", command=self.update_record)
        self.btn_update.pack(side="left", padx=5)
        self.btn_delete = tk.Button(button_frame, text="Eliminar", command=self.delete_record)
        self.btn_delete.pack(side="left", padx=5)

        self.result_frame = tk.Frame(self.root)
        self.result_frame.pack(side="top", fill="both", expand=True, padx=10, pady=10)

        self.tree = None

        self.input_widgets = {}

    def clear_frame(self, frame):
        for widget in frame.winfo_children():
            widget.destroy()

    def on_table_select(self, event):
        table = self.table_var.get()
        self.current_table = table
        self.build_input_fields(table)
        self.clear_results()

    def build_input_fields(self, table):
        self.clear_frame(self.input_frame)
        self.input_widgets.clear()

        if not table or table not in self.table_schemas:
            return

        fields = self.table_schemas[table]["fields"]
        for idx, (field_name, field_type) in enumerate(fields):
            lbl = tk.Label(self.input_frame, text=field_name + ":")
            lbl.grid(row=idx, column=0, sticky="e", padx=3, pady=3)
            entry = tk.Entry(self.input_frame, width=40)
            entry.grid(row=idx, column=1, padx=3, pady=3)
            self.input_widgets[field_name] = (entry, field_type)

    def get_input_values(self):
        values = []
        for field_name, (widget, field_type) in self.input_widgets.items():
            val = widget.get().strip()
            if val == "":
                messagebox.showwarning("Campos vacíos", f"El campo '{field_name}' no puede estar vacío.")
                return None
            try:
                if field_type == "int":
                    val = int(val)
                elif field_type == "float":
                    val = float(val)
                # else keep as string
            except ValueError:
                messagebox.showwarning("Tipo inválido", f"El campo '{field_name}' debe ser de tipo {field_type}.")
                return None
            values.append(val)
        return values

    def create_record(self):
        if self.current_table is None:
            messagebox.showwarning("Seleccionar tabla", "Selecciona una tabla primero.")
            return
        values = self.get_input_values()
        if values is None:
            return
        proc = self.table_schemas[self.current_table]["proc_insert"]
        call_procedure(self.conn, proc, tuple(values))
        messagebox.showinfo("Éxito", f"Registro creado en {self.current_table}.")

    def read_record(self):
        if self.current_table is None:
            messagebox.showwarning("Seleccionar tabla", "Selecciona una tabla primero.")
            return

        # Special read for Cosmetico, Alimento, Venta to filter by idSucursal
        if self.current_table in ["Cosmetico", "Alimento", "Venta"]:
            idSucursal = tk.simpledialog.askinteger("Consultar", "ID Sucursal para filtrar registros:")
            if idSucursal is None:
                return
            try:
                cursor = self.conn.cursor()
                query = f"SELECT * FROM {self.current_table} WHERE idSucursal = %s"
                cursor.execute(query, (idSucursal,))
                rows = cursor.fetchall()
                cursor.close()
                self.show_results(rows, self.table_schemas[self.current_table]["display_cols"])
            except Error as e:
                messagebox.showerror("Error", f"Error consultando {self.current_table} por idSucursal: {e}")
            return

        id_field = self.table_schemas[self.current_table]["id_field"]
        id_widget, id_type = self.input_widgets.get(id_field, (None, None))
        if id_widget is None:
            messagebox.showerror("Error interno", f"No se encontró el campo id '{id_field}'")
            return
        val = id_widget.get().strip()
        if val == "":
            messagebox.showwarning("Campo id vacío", f"Ingresa el valor para '{id_field}' para consultar")
            return
        try:
            if id_type == "int":
                val = int(val)
            elif id_type == "float":
                val = float(val)
        except ValueError:
            messagebox.showwarning("Tipo inválido", f"El campo '{id_field}' debe ser de tipo {id_type}.")
            return

        proc = self.table_schemas[self.current_table]["proc_select"]
        rows = call_procedure(self.conn, proc, (val,))
        self.show_results(rows, self.table_schemas[self.current_table]["display_cols"])

    def update_record(self):
        if self.current_table is None:
            messagebox.showwarning("Seleccionar tabla", "Selecciona una tabla primero.")
            return
        values = self.get_input_values()
        if values is None:
            return
        proc = self.table_schemas[self.current_table]["proc_update"]
        call_procedure(self.conn, proc, tuple(values))
        messagebox.showinfo("Éxito", f"Registro actualizado en {self.current_table}.")

    def delete_record(self):
        if self.current_table is None:
            messagebox.showwarning("Seleccionar tabla", "Selecciona una tabla primero.")
            return
        id_field = self.table_schemas[self.current_table]["id_field"]
        id_widget, id_type = self.input_widgets.get(id_field, (None, None))
        if id_widget is None:
            messagebox.showerror("Error interno", f"No se encontró el campo id '{id_field}'")
            return
        val = id_widget.get().strip()
        if val == "":
            messagebox.showwarning("Campo id vacío", f"Ingresa el valor para '{id_field}' para eliminar")
            return
        try:
            if id_type == "int":
                val = int(val)
            elif id_type == "float":
                val = float(val)
        except ValueError:
            messagebox.showwarning("Tipo inválido", f"El campo '{id_field}' debe ser de tipo {id_type}.")
            return
        proc = self.table_schemas[self.current_table]["proc_delete"]
        call_procedure(self.conn, proc, (val,))
        messagebox.showinfo("Éxito", f"Registro eliminado en {self.current_table}.")
        self.clear_results()

    def clear_results(self):
        if self.tree is not None:
            self.tree.destroy()
            self.tree = None

    def show_results(self, rows, columns):
        self.clear_results()
        if not rows:
            messagebox.showinfo("Resultados", "No hay datos para mostrar.")
            return

        self.tree = ttk.Treeview(self.result_frame, columns=columns, show='headings')
        vsb = ttk.Scrollbar(self.result_frame, orient="vertical", command=self.tree.yview)
        self.tree.configure(yscrollcommand=vsb.set)
        vsb.pack(side='right', fill='y')
        self.tree.pack(expand=True, fill='both')

        for col in columns:
            self.tree.heading(col, text=col)
            self.tree.column(col, width=120, anchor='center')

        for row in rows:
            self.tree.insert("", "end", values=tuple(row))

def main():
    root = tk.Tk()
    app = VeterinaryApp(root)
    root.mainloop()

if __name__ == "__main__":
    main()


