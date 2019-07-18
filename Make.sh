echo "###############################################"
echo "############ Run make wrapper #################"
echo "############ Input : { $@ }..."

make CMAKE=/home/a/W/W.priv/Shared/CMake/bin/cmake $@

echo "###############################################"
echo "############ Show binaries ####################"
find bin
