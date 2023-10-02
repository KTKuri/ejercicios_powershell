#FUNCIONES A DECLARAR

Function Sumar ($num1, $num2) {
    $sumar = $num1 + $num2
    Write-Host "El resultado es $sumar"
    }

Function Restar ($num1, $num2) {
    $restar = $num1 - $num2
    Write-Host "El resultado es $restar"
    }

Function Multiplicar ($num1, $num2) {
    $mult = $num1*$num2
    Write-Host "El resultado es $mult"
    }
    
Function Dividir ($num1, $num2) {
    $divid = $num1/$num2
    Write-Host "El resultado es $divid"
    }

#PROGRAMA DE LA CALCULADORA

while ($choose -ne 5) {

[int]$num1 = Read-Host "Elija el primer número"
[int]$num2 = Read-Host "Elija el segundo número"
 
$choose = Read-Host "****** CALCULADORA ********

      1. Sumar
      2. Restar
      3. Multiplicar
      4. Dividir
      5. Salir

¿Qué desea hacer? Elige una opción"


switch ($choose) {
    
    1 {
        Sumar $num1 $num2
        Read-Host "Presiona ENTER para continuar"
        Clear-Host
    }

    2 {
        Restar $num1 $num2
        Read-Host "Presiona ENTER para continuar"
        Clear-Host
    }

    3 {
        Multiplicar $num1 $num2
        Read-Host "Presiona ENTER para continuar"
        Clear-Host
    }

    4 {
        Dividir $num1 $num2
        Read-Host "Presiona ENTER para continuar"
        Clear-Host
    }

    5 {
        Read-Host "Saliendo..."
    }

    default {
        Write-Host "Valor introducido incorrecto"
        Read-Host "Presiona ENTER para continuar"
        Clear-Host
        
    }

}}
 
