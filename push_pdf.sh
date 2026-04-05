#!/bin/bash
echo "--- Sincronizzazione Repo SOLO PDF ---"

# 1. Restiamo su main, ma cambiamo temporaneamente il gitignore
cp .gitignore_pdf .gitignore

# 2. Invece di resettare la cache, forziamo l'aggiunta dei soli PDF
# Il comando 'git add **/*.pdf' cerca i pdf in tutte le cartelle
git add **/*.pdf
git add README.md .gitignore

# 3. Commit
echo "Messaggio per il commit PDF:"
read msg
git commit -m "$msg"

# 4. Push alla repo dei PDF
# Usiamo :main per assicurarci che vada nel branch giusto
git push solo-pdf main

# 5. RIPRISTINO IMMEDIATO: Torniamo al gitignore completo
# Così i tuoi file .tex tornano subito "visibili" per Git
cp .gitignore_full .gitignore
git add .

echo "--- Fatto! Solo i PDF sono stati inviati a Appunti-ING ---"
