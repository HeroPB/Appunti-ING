#!/bin/bash
echo "--- Sincronizzazione Repo COMPLETA ---"

# 1. Torna al branch principale (se non ci sei già)
git checkout main 2>/dev/null || git checkout -b main

# 2. Configura il .gitignore
cp .gitignore_full .gitignore

# 3. Reset cache e add
git rm -r --cached . > /dev/null
git add -A

# 4. Commit e Push forzato al main
echo "Inserisci il messaggio del commit:"
read msg
git commit -m "$msg"
git push completo main --force

echo "--- Fatto! Ora controlla Ingegneria-Appunti-Latex ---"
