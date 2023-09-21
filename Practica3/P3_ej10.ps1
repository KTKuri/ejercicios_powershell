[double]$valoracion = Read-Host "Introduce tus puntos (0.0, 0.4, 0.6)"

$sueldo = $valoracion*2400

If ($valoracion -eq 0.0){
    Write-Host "Tu rendimiento ha sido INACEPTABLE. Te corresponden: $sueldo €" 

}ElseIf ($valoracion -eq 0.4){
    Write-Host "Tu rendimiento ha sido ACEPTABLE. Te corresponden: $sueldo €" 

}ElseIf ($valoracion -ge 0.6){
    Write-Host "Tu rendimiento ha sido MERITORIO. Te corresponden: $sueldo €"

}Else {
    Write-Host "ERROR. Revisa los datos introducidos."
}