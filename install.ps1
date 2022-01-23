$dirPath=$(split-path $profile)
if(!(Test-Path $dirPath)){
	mkdir $(split-path $profile)
}
$aliasPath="$(split-path $profile)\profile.ps1"

echo "set-alias gitExec '$(pwd)\gitExec.ps1'">$aliasPath
echo "set-alias ge '$(pwd)\gitExec.ps1'">>$aliasPath
echo "set-alias glgit '$(pwd)\gitExec.ps1'">>$aliasPath

echo "set-alias git '$(pwd)\git.ps1'">>$aliasPath
echo "set-alias glnew '$(pwd)\glnew.ps1'">>$aliasPath
echo "set-alias glend '$(pwd)\glend.ps1'">>$aliasPath
echo "set-alias glreb '$(pwd)\glreb.ps1'">>$aliasPath
echo "set-alias glmrs '$(pwd)\glmrs.ps1'">>$aliasPath
echo "set-alias gitinteractive '$(pwd)\gitinteractive.ps1'">>$aliasPath