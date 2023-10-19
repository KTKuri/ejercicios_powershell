$acl = Get-Acl -Path C:\ASO\prueba2 

#Deshabilitar la herencia y eliminar TODAS las reglas de acceso
$acl.SetAccessRuleProtection($true, $false)

#Añadimos al grupo de Administradores el permiso de Control Total
$permiso = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
$permiso2 = 'Usuarios del dominio','Read','ContainerInherit,ObjectInherit','None','Allow'

$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
$acl.SetAccessRule($ace)


$ace2 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso2
$acl.SetAccessRule($ace2)
$ace2 | Format-Table

Set-Acl -Path C:\ASO\prueba2 -AclObject $acl