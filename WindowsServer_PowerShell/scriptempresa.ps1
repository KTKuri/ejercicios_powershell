#Creación de la Unidad Organizativa y su estructura
$departamentos = Import-Csv C:\Users\Administrador\Desktop\archivoscsv\departamentos.csv -Delimiter ";"
$empleados = Import-Csv C:\Users\Administrador\Desktop\archivoscsv\empleados.csv -Delimiter ";"

New-ADOrganizationalUnit -Name "Empresa" -Path "DC=EMPRESA,DC=LOCAL" -Description "Unidad Empresa"

foreach ($dep in $departamentos) 
{
    New-ADOrganizationalUnit -Name $($dep.departamento) -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Description "Unidad Empresa"
    New-ADGroup -Name $($dep.departamento) -GroupCategory Security -GroupScope Global -Path "OU=$($dep.departamento),OU=Empresa,DC=EMPRESA,DC=LOCAL"
}

foreach ($emp in $empleados)
{
    New-ADUser -Name $($emp.nombre) -Path "OU=$($emp.departamento),OU=Empresa,DC=Empresa,DC=Local" -SamAccountName "$($emp.nombre).$($emp.apellido)" -UserPrincipalName "$($emp.nombre).$($emp.apellido)@empresa.local" -AccountPassword (ConvertTo-SecureString "aso2021." -AsPlainText -Force) -GivenName "$($emp.nombre)" -Surname "$($emp.apellido)" -ChangePasswordAtLogon $false -Enabled $true
    Add-ADGroupMember -Identity "$($emp.departamento)" -Members "$($emp.nombre).$($emp.apellido)"
}
