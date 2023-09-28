[int]$numtriang = Read-Host "Introduce la altura del triángulo"

for ($i = 1; $i -le $numtriang; $i++) {
        Write-Host ("*" * $i)
}