#Crear la carpeta principal
New-Item -Name Empresa -Path C:\ -ItemType Directory

#Crear la estructura
$departamentos = Import-Csv C:\Users\Administrador\Desktop\archivoscsv\departamentos.csv -Delimiter ";"

foreach ($dep in $departamentos) 
{
    New-Item -Name $($dep.departamento) -Path C:\Empresa -ItemType Directory
}

#Añadir los recursos compartidos
foreach ($dep in $departamentos)
{
    New-SmbShare -Name $($dep.departamento) -Path C:\Empresa\$($dep.departamento)
    Revoke-SmbShareAccess -Name $($dep.departamento) -AccountName "Todos" -Force
    Grant-SmbShareAccess -Name $($dep.departamento) -AccountName "Administrador" -AccessRight Full -Force
    Grant-SmbShareAccess -Name $($dep.departamento) -AccountName $($dep.departamento) -AccessRight Change -Force
    Grant-SmbShareAccess -Name $($dep.departamento) -AccountName "Usuarios del dominio" -AccessRight Read -Force
}

#Asignar permisos NTFS a Empresa
foreach($dep in $departamentos)
{
    $acl = Get-Acl -Path C:\Empresa\$($dep.departamento)
    $acl.SetAccessRuleProtection($true,$false)

    $permisousdom = 'Usuarios del dominio','Read','ContainerInherit,ObjectInherit','None','Allow'
    $permisodep = "$($dep.departamento)",'Modify','ContainerInherit,ObjectInherit','None','Allow'
    $permisoadmin = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'

    $ace1 = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisousdom
    $acl.SetAccessRule($ace1)
    $ace2 = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisodep
    $acl.SetAccessRule($ace2)
    $ace3 = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadmin
    $acl.SetAccessRule($ace3)
    $ace | Format-Table

    Set-Acl -AclObject $acl -Path C:\Empresa\$($dep.departamento)
}
