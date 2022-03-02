

FULL_PATH=~/Desktop/NodeMaker

cd ${FULL_PATH}

cp -r *.sh ${1}

cd $1

# rm -rf .git
# rm .DS_Store
# rm -rf images
# rm -rf .history
# rm README.md
# rm .gitignore

chmod +x *.sh