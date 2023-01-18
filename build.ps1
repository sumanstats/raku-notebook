$ErrorActionPreference = 'Stop';
Write-Host "Starting build"

docker build -t $env:USER/raku-notebook .

Write-Host "Finished build"