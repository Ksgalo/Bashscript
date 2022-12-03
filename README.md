# Bashscript
A bash script is a series of commands written in a file. These are read and executed by the bash program. The program executes line by line. For example, you can navigate to a certain path, create a folder and spawn a process inside it using the command line
# Primer Parcial
# Electiva II - Ingeniería de Sistemas - Unilibre Cali


# Todo se debe realizar en el directorio ~/Parcial
# en este directorio deben crear un directorio
# con su primer Apellido y primer Nombre,
# con la inicial en mayúscula:
# Ej: ~/Parcial/Perez_Pedro/
# en este directorio deben crear los directorios 
# de resultado de los scripts

# Ventas
# 
# Script: ~/Parcial/bin/transmitir_ventas.sh
# Archivo: ~/Parcial/data/ventas_valle.zip
# Directorio resultado: ~/Parcial/Perez_Pedro/ventas/
#
# El archivo de datos está codificado BASE64
# Cree un archivo "datos_municipio.csv" por cada municipio,
# donde irán solo los datos de ventas de ese municipio,
# y un archivo "datos_municipio.csv.sha256" con el hash
# SHA256 de dicho archivo
# Ej: datos_palmira.csv y datos_palmira.csv.sh256
# Nota: utilice el comando sha256sum para calcular el hash


# Paises
#
# Script: ~/Parcial/bin/crear_usuarios.sh
# Archivo: ~/Parcial/data/users.txt.bz2
# Directorio resultado: ~/Parcial/Perez_Pedro/paises/
#
# Cree un archivo ".txt.bz2" por cada pais
# con el siguiente contenido:
# 'Boyer, Aaron' <a.boyer@empresa.com>
# 'Mercer, Adbul' <a.mercer@empresa.com>
# 'Strong, Abigail' <a.strong@empresa.com>


# COVID
#
# Script: ~/Parcial/bin/separar_covid19.sh
# Archivo: ~/Parcial/data/covid19-co.csv.gz
# Directorio resultado: ~/Parcial/Perez_Pedro/covid/
#
# Cree archivos "co-aaaammdd.csv" por cada fecha 
# año-mes-día diferente
# Comprima en diferentes zip todos los archivos ".csv" 
# del mismo año-mes, con el nombre "aaaa-mm.zip"
# El script también debe eliminar los archivos ".csv"
