#!/bin/bash

#Reiniciar el microservicio corbeta

sh recorbeta.sh

# Defina la ruta de archivo de salida
OUTPUT_DIR=/home/logmicroservicio
OUTPUT_FILE=$OUTPUT_DIR/$(date +%Y%m%d)_resultado.txt

# Cree el directorio de salida si no existe
mkdir -p $OUTPUT_DIR

# Función para ejecutar comandos y registrar la salida en el archivo de salida
run_command() {
  echo "------------------------ $1 ($YES_DAT) ------------------------" >> $OUTPUT_FILE
  {
    $2
    date
  } >> $OUTPUT_FILE
  echo "" >> $OUTPUT_FILE
}

# Obtener la fecha de ayer
YES_DAT=$(date --date=' 1 days ago' '+%Y-%m-%d')

# Ejecutar cada comando y registrar la salida en el archivo de salida
run_command "Divisiones" "curl -s -w "@curl-format.txt"  https://efiksstuser.binaps.cloud/division-ws/v1/divisions/update/bylastmodifieddate/$YES_DAT" | sed 's/\\n/\n/g'

run_command "Localizaciones" "curl -s -w "@curl-format.txt" https://efiksstuser.binaps.cloud/location-ws/v1/locations/update/bylastmodifieddate/$YES_DAT" | sed 's/\\n/\n/g'
