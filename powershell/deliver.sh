

FULL_PATH=~/Desktop/NodeMaker/bash
echo ${FULL_PATH} ${1}
cd ${FULL_PATH}

cp **/*.sh ${1}

cd $1


chmod +x *.sh