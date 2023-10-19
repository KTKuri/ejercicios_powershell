#Obtener una variable y acceder a ella en un formato específico
$acl = Get-Acl -Path C:\ASO\prueba
$acl.Access | Format-Table

#Deshabilitar la herencia ([true] para habilitar/ [false] para desactivar)
#Preservar las reglas de acceso ([true] para preservar/ [false] para quitar)
#$acl.SetAccessRuleProtection($true, $true)

#Aplicar cambios
#Set-Acl -Path C:\ASO\prueba -AclObject $acl
#O también:
#$acl | Set-Acl -Path C:\ASO\prueba

$listaACE = $acl.Access

#Eliminar reglas de acceso
foreach ($ace in $listaACE)
{
    $ace | Format-List
    $acl.RemoveAccessRule($ace)
}

#Añadir grupo Administradores tenga Control Total
$permiso = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
$acl.SetAccessRule($ace)

Set-Acl -Path C:\ASO\prueba -AclObject $acl