#!/bin/sh
# Build script — reemplaza placeholders con env vars de Coolify
set -e

cp index.html dist.html
sed -i "s|%%SUPABASE_URL%%|${SUPABASE_URL}|g" dist.html
sed -i "s|%%SUPABASE_KEY%%|${SUPABASE_KEY}|g" dist.html
mv dist.html index.html

echo "Build OK — keys inyectadas desde env vars"
