#! /bin/bash

git pull

cd ../josalab.github.io/

git pull
git merge
git add .
git commit -m 'removido'

mkdocs gh-deploy --config-file ../josalab/mkdocs.yml --remote-branch main

read -p "Pressione ENTER para sair."
