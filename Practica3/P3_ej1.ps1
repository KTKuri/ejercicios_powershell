[int]$num = Read-Host "Introduce un número"
If ($num%2 -eq 0) {
    Write-Host "El número es par."

}Else {
    Write-Host "El número es impar."
}