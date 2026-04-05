#!/bin/bash
echo "--- Sincronizzazione Repo COMPLETA ---"

# 1. Assicuriamoci di essere su main
git checkout main 2>/dev/null || git checkout -b main

# 2. Usiamo il gitignore completo
cp .gitignore_full .gitignore

# 3. Aggiungiamo tutto (Git aggiungerà tutto ciò che non è ignorato in .gitignore_full)
git add .

# 4. Commit e Push
echo "Messaggio per il commit completo:"
read msg
git commit -m "$msg"
git push completo main

echo "--- Fatto! Tutto online su Ingegneria-Appunti-Latex ---"
