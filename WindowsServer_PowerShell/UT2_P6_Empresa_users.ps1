#Previo
Clear-Host
$empleados = Import-Csv C:\Users\Administrador\Desktop\archivoscsv\empleados.csv -delimiter ";"


#Crear la estructura
New-Item -Path C:\Empresa_users -Name Empresa_users -ItemType Directory
New-SmbShare -Name Empresa_users$ -Path C:\Empresa_users -FullAccess "Usuarios del dominio"


foreach ($emp in $empleados)
{
    New-Item -Path "C:\Empresa_users\$($emp.nombre).$($emp.apellido)" -ItemType Directory
}


#Permisos NTFS
foreach ($emp in $empleados)
{
    $acl = Get-Acl -Path C:\Empresa_users\$($emp.nombre).$($emp.apellido)
    $acl.SetAccessRuleProtection($true,$false)

    $permisousdmom = "$($emp.nombre).$($emp.apellido)",'FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $persmisoadmin = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'

    $ace1 = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisousdmom
    $acl.SetAccessRule($ace1)
    $ace2 = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $persmisoadmin
    $acl.SetAccessRule($ace2)
    $acl | Format-Table
    Set-Acl -AclObject $acl -Path C:\Empresa_users\$($emp.nombre).$($emp.apellido)
}


foreach ($emp in $empleados)
{
Set-ADUser -Identity "$($emp.nombre).$($emp.apellido)" -ScriptPath "carpeta$($emp.departamento).bat" -HomeDrive "Z:" -HomeDirectory "\\empresa-DC1\Empresa_users$\$($emp.nombre).$($emp.apellido)"
}