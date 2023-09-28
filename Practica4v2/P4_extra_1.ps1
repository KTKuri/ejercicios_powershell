[int]$altura = Read-Host "Introduce la altura"

for ($i = 1; $i -le $altura; $i++){ 
    for ($j = $i; $j -ge 1; $j--){ 
        Write-Host -NoNewline "$j "
    }
    Write-Host ""
}