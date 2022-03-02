

echo $1
FULL_PATH=~/Desktop/NodeMaker

cd ${FULL_PATH}

echo ${PWD}

cp -r . ${1}

cd $1

pwd

rm -rf .git
rm .DS_Store
rm -rf images