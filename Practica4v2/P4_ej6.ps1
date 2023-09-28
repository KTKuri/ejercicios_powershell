Clear-Host
[int]$num = 13
[int]$try = Read-Host "Introduce un número"
while ($try -ne $num){
if ($try -gt $num -and $try -le 100){
    Write-Host "Te has pasado. Prueba con un número más pequeño."

}Else ($try -lt $num -and $try -le 100){
    Write-Host "Te has quedado corto. Prueba con un número más grande."

}Else {
    Write-Host "No has introducido un número correcto"
}
}

$quest = Read-Host "¿Que número es?
