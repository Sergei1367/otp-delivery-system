Write-Host "🧹 Cleaning dist, .ts-node cache and node_modules cache..." -ForegroundColor Cyan

# Удаляем dist (если есть)
if (Test-Path "dist") {
    Remove-Item "dist" -Recurse -Force -ErrorAction SilentlyContinue
}

# Удаляем .ts-node (если есть)
if (Test-Path ".ts-node") {
    Remove-Item ".ts-node" -Recurse -Force -ErrorAction SilentlyContinue
}

# Удаляем node_modules/.cache (если есть)
if (Test-Path "node_modules\.cache") {
    Remove-Item "node_modules\.cache" -Recurse -Force -ErrorAction SilentlyContinue
}

Write-Host "✨ Cleanup complete! No source files were touched." -ForegroundColor Green
