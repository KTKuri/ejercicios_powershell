#Previo
Clear-Host
$empleados = Import-Csv C:\Users\Administrador\Desktop\archivoscsv\empleados.csv -delimiter ";"


foreach ($emp in $empleados)

{
    If ($emp.departamento -eq "PERSONAL"){
        Set-ADUser -Identity "$($emp.nombre).$($emp.apellido)" -ProfilePath "\\empresa-DC1\Empresa_users$\$($emp.nombre).$($emp.apellido)"
    }
}
