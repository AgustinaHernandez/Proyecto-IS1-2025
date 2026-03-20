#!/bin/bash
# -- mini-script para ejectuar la app --
# Dar permisos : chmod +x run.sh
# Ejecutar con : ./run.sh

mvn clean package
if [ $? -eq 0 ]; then
    mvn exec:java
else
    echo "Error en la compilacion, el programa no se ejecutara"
fi
