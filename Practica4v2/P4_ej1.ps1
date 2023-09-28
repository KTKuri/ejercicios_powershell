$name = Read-Host "Introduce tu nombre"
$num = Read-Host "¿Cuantas veces quieres que se repita?"
$times = 1

for ($times = 1; $times -le $num; $times++)
{
    Write-Host $name
}