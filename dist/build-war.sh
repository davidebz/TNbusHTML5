
WAR_NAME="tnbushtml5.war"

cd $(dirname "$0")
DIST_DIR=$(pwd -P)
echo $DIST_DIR

cd ../war

zip -r --filesync --no-dir-entries ../dist/$WAR_NAME .
