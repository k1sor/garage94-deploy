param(
    [string]$Domain = "garage94.localhost"
)

mkcert -cert-file "$Domain.pem" -key-file "$Domain-key.pem" $Domain

if ($LASTEXITCODE -eq 0) {
    Write-Host "Готово: $Domain.pem и $Domain-key.pem"
}
