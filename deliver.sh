

FULL_PATH=~/Desktop/NodeMaker

cd ${FULL_PATH}

cp -r . ${1}

cd $1

rm -rf .git
rm .DS_Store
rm -rf images