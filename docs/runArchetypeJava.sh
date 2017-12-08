#!/bin/bash
clear; echo "Ejecución de shell"
cd archetype-java-restfull-dropwizard
echo "---> Inicia la instalación"
echo ""
mvn install
if [ $? -eq 0 ] ; then
	clear; echo "Instalación de archetype exitosa";echo ""
else
	echo "Falló el proceso en mvn"
	fi
echo ""
echo "---> Inicia generación de proyecto"
echo ""
cd ../workplace
if [ -d "api-rest-demo" ] ; then
	echo "---> Borrando proyecto anterior"
	rm -r api-rest-demo
	echo ""
	fi

./setup.sh
cd api-rest-demo
pwd
tree
cat rest/src/main/java/com/isortegah/rest/RestConfiguration.java | head -n 10 -v
mvn install