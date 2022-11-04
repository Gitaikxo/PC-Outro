$tiempo = Read-Host "Indique la cantidad de tiempo en segundos"
$decision = Read-Host "Indique si quiere apagar (0) o reiniciar (1)"
if ($decision -eq 0)
{
    while($tiempo -ge 0)
    {
        Write-Host "El PC se apagará en $tiempo segundos"
        $tiempo = $tiempo - 1
        Start-Sleep -Seconds 1
        if($tiempo -eq 16)
        {
            .\outro.mp3
        }
    }
    Stop-Computer
}
else
{
    if ($decision -eq 1)
    {
        while($tiempo -ge 0)
        {
            Write-Host "El PC se apagará en $tiempo segundos"
            $tiempo = $tiempo - 1
            Start-Sleep -Seconds 1
            if($tiempo -eq 16)
            {
                .\outro.mp3
            }
        }
        Restart-Computer
    }
    else
    {
        Write-Host "Se ha cancelado la operación"
    }
}

