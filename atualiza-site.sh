#! /bin/bash

git pull
git add .
git commit -m "Atualização do código fonte em $(date)'"
git push

mkdocs gh-deploy

# cd ../josalab.github.io/

# git pull
# git merge
# git add .
# git commit -m 'removido'

# mkdocs gh-deploy --config-file ../josalab/mkdocs.yml --remote-branch main

#read -p "Pressione ENTER para sair."
