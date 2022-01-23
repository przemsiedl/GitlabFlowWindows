Add-Type -AssemblyName System.Windows.Forms
$wshell = New-Object -ComObject wscript.shell
$gitPath = '/' + $(pwd).Path -replace ':','' -replace '\\','/'
$windowName = "MINGW64:" + $gitPath
$command = $args
if($wshell.AppActivate($windowName))
{
	Sleep 0.5
	[System.Windows.Forms.SendKeys]::SendWait($command)
	[System.Windows.Forms.SendKeys]::SendWait('{Enter}')
}
else 
{
	Write-Host "Okno git jest niedostępne. Otwieram nowe."
	start 'C:\Program Files\Git\git-bash.exe' -ArgumentList "-c '/usr/bin/bash --login -i'"
	if($command -ne ""){
		sleep 2
		[System.Windows.Forms.SendKeys]::SendWait($command);
		[System.Windows.Forms.SendKeys]::SendWait('{Enter}')
	}
}