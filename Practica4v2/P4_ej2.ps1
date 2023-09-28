$edad = Read-Host "Introduce tu edad"
$año = 1

for ($año = 1; $año -le $edad; $año++)
{
    Write-Host $año
}