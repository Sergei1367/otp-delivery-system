Write-Host "Setup started" -ForegroundColor Cyan

# Создание директорий
$paths = @(
  "src",
  "src/api",
  "src/core",
  "src/core/messageObject",
  "src/core/orchestrator",
  "src/core/fallback",
  "src/adapters",
  "tests"
)

foreach ($p in $paths) {
  if (-not (Test-Path $p)) {
    New-Item -ItemType Directory -Path $p | Out-Null
  }
}

# Инициализация npm и установка зависимостей
npm init -y
npm install typescript ts-node @types/node --save-dev

Write-Host "Setup finished" -ForegroundColor Green
