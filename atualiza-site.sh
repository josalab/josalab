#! /bin/bash

git pull
git add .
git commit -m "Atualização do código fonte em $(date)'"
git push -u origin main

cd ../josalab.github.io/
git pull
mkdocs gh-deploy --config-file ../josalab/mkdocs.yml --remote-branch main


