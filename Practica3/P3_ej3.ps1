[int]$num1 = Read-Host "Introduzca el primer número (1/2)"
[int]$num2 = Read-Host "Introduzca el segundo número (2/2)"

If ($num1 -gt $num2){
    Write-Host "El número $num1 es mayor que $num2"

}ElseIf ($num1 -eq $num2){
    Write-Host "El número $num1 es igual que $num2"

}Else {
    Write-Host "El número $num1 es menor que $num2"
}