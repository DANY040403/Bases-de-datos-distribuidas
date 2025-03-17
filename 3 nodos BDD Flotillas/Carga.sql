use lcs1_principal;

load data infile '/mysql/flotilla.txt' into table flotilla FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

load data infile '/mysql/vehiculo.txt' into table vehiculo FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

load data infile '/mysql/documento.txt' into table documento FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

use lcs2_mantenimiento;

load data infile '/mysql/vehiculo.txt' into table vehiculo FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

load data infile '/mysql/mantenimiento.txt' into table mantenimiento FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

use lcs3_rutas;

load data infile '/mysql/vehiculo.txt' into table vehiculo FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

load data infile '/mysql/conductor.txt' into table conductor FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';
load data infile '/mysql/ruta.txt' into table ruta FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';