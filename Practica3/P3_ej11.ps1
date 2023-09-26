[int]$edad = Read-Host "Introduce tu edad"

If ($edad -lt 4){
    Write-Host "¡Entrada gratis para menores de 4 años!"

}ElseIf ($edad -ge 4 -and $edad -lt 18){
    Write-Host "El precio de la entrada es 5€"

}ElseIf ($edad -gt 18){
    Write-Host "El precio de la entrada es de 10€"

}Else {
    Write-Host "Edad introducida incorrecta"
}