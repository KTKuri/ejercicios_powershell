$usuarios = Import-Csv Z:\Practica5\usuarios.csv
foreach ($user in $usuarios) {
    Write-Host "Usuario: $($user.nombre) $($user.apellidos) $($user.grupo)"
    }