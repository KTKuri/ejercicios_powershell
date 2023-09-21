$impos1 = "5%"
$impos2 = "15%"
$impos3 = "20%"
$impos4 = "30%"
$impos5 = "45%"

[int]$renta = Read-Host "Introduce tu renta anual en €"

switch ($renta) {

    {$_ -lt "10000"}{
        Write-Host "Te corresponde el $impos1 de impuestos."}
    {$_ -ge "10000" -and $_ -lt "20000"}{
        Write-Host "Te corresponde el $impos2 de impuestos."}
    {$_ -ge "20000" -and $_ -lt "35000"}{
        Write-Host "Te corresponde el $impos3 de impuestos."}
    {$_ -ge "35000" -and $_ -lt "60000"}{
        Write-Host "Te corresponde el $impos4 de impuestos."}
    {$_ -ge "60000"}{
        Write-Host "Te corresponde el $impos5 de impuestos."}
    default {
        Write-Host "No se han introducido correctamente los datos"}
}