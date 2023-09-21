[int]$edad = Read-Host "Introduce tu edad"
If ($edad -ge 18){
    Write-Host "Felicidades, eres mayor de edad"
}Else {
    Write-Host "Todavía eres menor"
}