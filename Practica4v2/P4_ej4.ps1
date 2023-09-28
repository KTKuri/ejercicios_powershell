$num = Read-Host "Introduzca un número entero"

for ($count = 1; $count -lt $num; $count=$count+2)
{
    Write-Host -nonewline "$count,"
}