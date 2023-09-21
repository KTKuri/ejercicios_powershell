[string]$nom = Read-Host "Introduce tu nombre"
[string]$sex = Read-Host "Introduce tu sexo (Hombre/Mujer)"

If ($nom -match "^[A-M].*" -and $sex -eq "Mujer"){
    Write-Host "Bienvenida, estás en el grupo A"

}ElseIf ($nom -match "^[N-Z].*" -and $sex -eq "Hombre"){
    Write-Host "Bienvenido, estás en el grupo A"

}ElseIF ($nom -match "^[N-Z].*" -and $sex -eq "Mujer"){
    Write-Host "Bienvenida, estás en el grupo B"

}ElseIf ($nom -match "^[A-N].*" -and $sex -eq "Hombre"){
    Write-Host "Bienvenido, estás en el grupo B"

}Else {
    Write-Host "No estás en la lista"
}