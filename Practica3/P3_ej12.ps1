Clear-Host
$tipopizza = Read-Host "Bienvenido a nuestra pizzería. Tenemos 2 tipos de pizza (Vegetariana o No Vegetariana). ¿Desea que la pizza sea vegetariana?

1. Si
2. No

Elija una de las 2 opciones"

If ($tipopizza -eq 1){

    $ingreveg = Read-Host "Todas nuestras pizzas llevan tomate y mozarella, pero además usted puede añadir un ingrediente extra. ¿Desea añadir [Pimiento] o [Tofu]?"

        If ($ingreveg -eq "Pimiento" -or $ingreveg -eq "Tofu"){
            Write-Host "Ingredientes finales de la pizza vegetariana:

            -Mozarella (obligatorio)
            -Tomate (obligatorio)
            -$ingreveg (elegido)

            La preparación de la pizza empezará enseguida."

        }Else {
            Write-Host "Ingrediente introducido erróneo. Por favor, introduzca [Pimiento] o [Tofu]"
        }
    

}ElseIf ($tipopizza -eq 2){

    $ingrenoveg = Read-Host "Todas nuestras pizzas llevan tomate y mozarella, pero además usted puede añadir un ingrediente extra. ¿Desea añadir [Peperoni], [Jamón] o [Salmón]?"

        If ($ingrenoveg -eq "Peperoni" -or $ingreveg -eq "Jamón" -or $ingrenoveg -eq "Salmón"){
            Write-Host "Ingredientes finales de la pizza no vegetariana:

            -Mozarella (obligatorio)
            -Tomate (obligatorio)
            -$ingrenoveg (elegido)

            La preparación de la pizza empezará enseguida."

        }Else {
            Write-Host "Ingrediente introducido erróneo. Por favor, introduzca [Peperoni], [Jamón] o [Salmón]"
        }

}Else {
    Write-Host "Valor introducido incorrecto"
}

