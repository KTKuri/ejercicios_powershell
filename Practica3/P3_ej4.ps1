[int]$num1 = Read-Host "Introduce un número"
[int]$num2 = Read-Host "Introduce otro número"

Write-Host "
****** CALCULADORA ******"

$opcion = Read-Host "
1. Sumar
2. Restar
3. Multiplicar
4. Dividir

Elige una opción"

Switch ($opcion){
    {$_ -eq 1} {$suma = $num1 + $num2
    Write-Host "La suma es: $suma"
    }

    {$_ -eq 2} {$resta = $num1 - $num2
    Write-Host "La resta es: $resta"
    }

    {$_ -eq 3} {$mult = $num1 * $num2
    Write-Host "La multiplicación es: $mult"
    }

    {$_ -eq 4} {$divis = $num1 / $num2
    Write-Host "La división es: $divis"
    }
}



   