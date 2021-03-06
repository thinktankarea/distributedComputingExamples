#!/bin/bash

# strict error handling
set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   # set -u : exit the script if you try to use an uninitialised variable
set -o errexit   # set -e : exit the script if any statement returns a non-true return value

currentDir=`pwd`
echo "We now build all the JSON RPC examples."

cd "$currentDir/calculator"
"$currentDir/calculator/make_linux.sh"

cd "$currentDir/warehouse"
"$currentDir/warehouse/make_linux.sh"

echo "Successfully finished building all the JSON RPC examples."
