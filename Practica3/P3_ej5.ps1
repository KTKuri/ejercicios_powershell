$ruta = Read-Host "Introduzca la ruta del fichero o archivo"
$validate = Test-Path $ruta

If ($validate -eq 1){
    Write-Host "El archivo existe"

}Else {
    Write-Host "El archivo no se ha encontrado"
}
    