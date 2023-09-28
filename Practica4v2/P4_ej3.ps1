[int]$num = Read-Host "Introduzca un número entero positivo"

for ($count = $num; $count -ge 1; $count--)
{
    Write-Host -nonewline "$count,"
}