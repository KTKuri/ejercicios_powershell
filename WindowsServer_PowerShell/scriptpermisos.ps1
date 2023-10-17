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