#!/bin/bash

# compilar hadoop 3.2.0 por default
version=${1:-3.2.0}

cd /hadoop-$version-src

echo -e "\n\ncomile hadoop $version..."
mvn package -Pdist,native -DskipTests -Dtar

if [[ $? -eq 0 ]]; then
	echo -e "\n\ncomile hadoop $version compilacion exitosa!\n\n"
	#mv ./hadoop-dist/target/hadoop-$version.tar.gz /binary
else
        echo -e "\n\ncomile hadoop $version compilacion fallida!\n\n"
fi
