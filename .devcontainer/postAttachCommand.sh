#! /bin/bash

NOTEBOOK_LIST=$(jupyter notebook list)
TOKEN=$(echo $NOTEBOOK_LIST | tr '?' '\n' | sed -n '2 p')
NOTEBOOK_ADDRESS="http://localhost:8888/?${TOKEN}"

cat << EOF

Here is your notebook link:
$NOTEBOOK_ADDRESS

EOF