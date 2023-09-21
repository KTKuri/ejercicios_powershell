$dir = Read-Host "Introduzca un directorio"
$esdir = Test-Path $dir -PathType Container

If ($esdir -eq 1){
    Write-Host "Este archivo es un directorio. A continuación se muestra su contenido:"
    Get-ChildItem -Recurse 

}Else {
    Write-Host "El archivo introducido no es un directorio. Prueba con otro"
}