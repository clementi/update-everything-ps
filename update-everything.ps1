Write-Host -ForegroundColor Yellow "=== Updating Everything ===`n"

# Write-Host -ForegroundColor Yellow "--- Updating WinGet packages ---`n"
# winget upgrade --all
# Write-Host ""

Write-Host -ForegroundColor Yellow "--- Updating Scoop packages ---"
scoop update -a
scoop cleanup *
Write-Host ""

Write-Host -ForegroundColor Yellow "--- Updating Rust ---`n"
rustup update
Write-Host ""

Write-Host -ForegroundColor Yellow "--- Updating Cargo packages ---`n"
cargo install-update -a
Write-Host ""

Write-Host -ForegroundColor Yellow "--- Updating Go packages ---`n"
~\go\bin\gup.exe update
Write-Host ""

Write-Host -ForegroundColor Yellow "--- Updating Python packages ---`n"
pipx upgrade-all
Write-Host ""

# Write-Host -ForegroundColor Yellow "--- Updating Exercism ---`n"
# exercism upgrade
# Write-Host ""

Write-Host -ForegroundColor Yellow "--- Updating Racket packages ---`n"
raco pkg update --all
Write-Host ""

Write-Host -ForegroundColor Yellow "=== Updates Complete ==="