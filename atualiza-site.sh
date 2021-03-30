#! /bin/bash

git pull
cd ../josalab.github.io/
mkdocs gh-deploy --config-file ../josalab/mkdocs.yml --remote-branch main
