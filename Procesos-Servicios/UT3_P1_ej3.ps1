#Matar todos los procesos de un usuario solicitado por al administrador
$usuario = Read-Host "Elija un usuario para cerrar todos sus procesos"

Get-Process -IncludeUserName | where UserName -eq "EMPRESA\$usuario" | Stop-Process -Force