#!/bin/bash
# ============================================
# Push to GitHub - PromptVault
# Usa tu SSH key personal configurada
# ============================================

set -e

echo "🚀 Publicando PromptVault en GitHub..."

# 1. Crear repo (si no existe)
echo "📦 Creando repositorio..."
gh repo create jesusmoreau/prompts-project --public \
  --description "PromptVault — Colección curada de prompts útiles para Claude, Gemini y ChatGPT" \
  2>/dev/null || echo "   (repo ya existe, continuando...)"

# 2. Configurar remote con SSH personal
echo "🔗 Configurando remote SSH..."
git remote remove origin 2>/dev/null || true
git remote add origin git@github.com-personal:jesusmoreau/prompts-project.git

# 3. Push
echo "⬆️  Pushing to main..."
git push -u origin main

echo ""
echo "✅ ¡Publicado!"
echo "🌐 https://github.com/jesusmoreau/prompts-project"
