do {

$option = Read-Host "Opciones a elegir:

a) Crear una carpeta

b) Crear un fichero nuevo

c) Cambiar el nombre de un fichero o carpeta

d) Borrar un archivo o carpeta

e) Verificar si existe un fichero o carpeta

f) Mostrar el contenido de un directorio

g) Mostrar la fecha y hora actuales

X) Salir

Elija una de las siguientes opciones"


If ($option -eq "x"){
    break 

}Else {

    switch ($option) {
        a {
            $dir = Read-Host "Nombre la de carpeta"
            New-Item $dir -ItemType Directory
            Get-ChildItem
            Read-Host "Pulse una tecla para continuar"
            Clear-Host
            }

        b {
            $fich = Read-Host "Nombre del fichero"
            New-Item $fich -ItemType File
            Get-ChildItem
            Read-Host "Pulse una tecla para continuar"
            Clear-Host
            }

        c {
            [string]$rename = Read-Host "Introduzca primero el [nombre antiguo] y luego el [nombre nuevo]"
            Rename-Item $rename
            Get-ChildItem
            Read-Host "Pulse una tecla para continuar"
            Clear-Host
            }

        d {
            $remove = Read-Host "Introduzca el nombre del archivo que quieras borrar"
            Remove-Item $remove
            Get-ChildItem
            Read-Host "Pulse una tecla para continuar"
            Clear-Host
            }

        e {
            $verif = Read-Host "Introduzca el nombre del archivo para verificar si existe"
                
                if (Test-Path $verif){
                    Write-Host "¡El fichero existe!"

                }ElseIf (Test-Path $verif -PathType Container) {
                    Write-Host "¡La carpeta existe!"
                
                }Else {
                    Write-Host "El archivo introducido no existe"
                }
            Get-ChildItem
            Read-Host "Pulse una tecla para continuar"
            Clear-Host
            }

        f {
            $ls = Read-Host "Introduzca el directorio"
            Get-ChildItem $ls
            Read-Host "Pulse una tecla para continuar"
            Clear-Host
            }

        g {
            Get-Date
            Read-Host "Pulse una tecla para continuar"
            Clear-Host
            }

        default {
            Read-Host "Valor introducido incorrecto. Presione cualquier tecla para volver a empezar"
            Clear-Host
            
            }
        }
    }
}

until ($option -eq "x")
Clear-Host
