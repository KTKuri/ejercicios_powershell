[int]$horas = Read-Host "Introduzca las horas trabajadas" 
[int]$coste = Read-Host "Introduzca el coste por hora" 
$salario = $horas * $coste
Write-Host "El salario que le corresponde es:" $salario"€"