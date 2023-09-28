[int]$altura = Read-Host "Introduce la altura del triángulo"

for ($i = 1; $i -le $altura; $i++){
    for ($j = ($i*2)-1; $j -ge 1; $j = $j -2){
        Write-Host -NoNewline "$j "
    }
    Write-Host ""
}
        
    