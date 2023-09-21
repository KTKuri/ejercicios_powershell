$contraseña = "holA-01"
[string]$psw = Read-Host "Introduce tu contraseña"

If ($psw -eq "$contraseña"){
    Write-Host "La contraseña introducida es correcta. Bienvenido"

}Else {
    Write-Host "La contraseña es incorrecta"
}