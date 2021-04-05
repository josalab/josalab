#! /bin/bash

TURMAS="docs/turmas/*.md"

cat << FIM
# Relatório de disciplinas sem link

FIM

if grep -q '()' $TURMAS; then

cat << FIM
## Número, por turma, de disciplinas sem link

$(grep -c '()' docs/turmas/*.md | egrep -v ':0$' | sed 's@docs/turmas/@@;s/^/- /')


FIM

cat << FIM

## Disciplinas sem link

FIM

    turma_analisada=

    # https://stackoverflow.com/questions/8914435/awk-sed-how-to-remove-parentheses-in-simple-text-file
    grep '()' docs/turmas/*.md | sed 's@docs/turmas/@@;s/o-ano/º ano/' | tr -d '()[]:-' | while IFS=. read turma disciplina; do
        disciplina=${disciplina/md /}
        if [ "$turma_analisada" != "$turma" ]; then
            turma_analisada="$turma"
            echo
            echo
            echo "### $turma"
            echo
        fi
        echo "- ${disciplina}"
    done


else
echo "Todas as disciplinas possuem link."
fi
 
read -p "Pressione ENTER para sair."
