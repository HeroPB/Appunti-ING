#!/bin/bash
echo "--- Sincronizzazione Repo SOLO PDF ---"

# 1. Usiamo un branch temporaneo per i PDF per non sporcare il main
git checkout -b branch-pdf 2>/dev/null || git checkout branch-pdf

# 2. Configura il .gitignore dei PDF
cp .gitignore_pdf .gitignore

# 3. Reset cache e add (leggerà solo i PDF)
git rm -r --cached . > /dev/null
git add -A

# 4. Commit e Push
echo "Inserisci il messaggio del commit:"
read msg
git commit -m "$msg"
# Spingiamo il contenuto di 'branch-pdf' locale nel 'main' remoto
git push solo-pdf branch-pdf:main --force

# 5. Torna al branch main e ripristina
git checkout main
cp .gitignore_full .gitignore

echo "--- Fatto! Ora controlla Appunti-ING ---"
