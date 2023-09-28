$num = Read-Host "Introduce un número"

for ($count = 1; $count -le 10; $count++)
{
    $mult = $num*$count
    Write-Host "$num x $count = $mult"
}