Add-Type -AssemblyName System.Windows.Forms
$wshell = New-Object -ComObject wscript.shell
$a = 
$gitPath = '/' + $(pwd).Path -replace ':','' -replace '\\','/'
$windowName = "MINGW64:" + $gitPath
while($true)
{
    Write-Host -NoNewline "$ "
    $command = Read-Host

    if($wshell.AppActivate($windowName))
    {
        Sleep 0.5
        [System.Windows.Forms.SendKeys]::SendWait($command)
        [System.Windows.Forms.SendKeys]::SendWait('{Enter}')
    }
    else 
    {
        if($command -ne 'exit')
        {
            Write-Host "Okno git jest niedostępne. Otwieram nowe."
            $trash = $wshell.Exec("C:\Program Files\Git\git-bash.exe")
            sleep 2
            [System.Windows.Forms.SendKeys]::SendWait('cd ' + $gitPath)
            [System.Windows.Forms.SendKeys]::SendWait('{Enter}')
            sleep 0.5
            [System.Windows.Forms.SendKeys]::SendWait($command);
            [System.Windows.Forms.SendKeys]::SendWait('{Enter}')
        
        }
    }

    if($command -eq 'exit')
    {
        break;
    }
}