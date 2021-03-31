#! /bin/bash

git pull
cd ../josalab.github.io/
git pull
mkdocs gh-deploy --config-file ../josalab/mkdocs.yml --remote-branch main
read -p "Pressione ENTER para sair."
