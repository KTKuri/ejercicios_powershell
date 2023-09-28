$psw = "contraseña"

$try = Read-Host "Escriba la contraseña"

while ($psw -ne $try){
    Clear-Host
    $try = Read-Host "Contraseña introducida incorrecta. Por favor vuelva a introducir la contraseña"   
}
Write-Host "Enhorabuena, la contraseña era **********"
