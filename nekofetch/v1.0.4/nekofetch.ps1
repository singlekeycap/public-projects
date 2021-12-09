param (
    [switch]$s = $True,
    [switch]$n = $False,
    [switch]$h = $False
)
$oldpp = $ProgressPreference
$ProgressPreference = "SilentlyContinue"
If($h -eq $True){echo "Help menu"; echo "-n    | Uses NSFW images"; echo "-s    | Uses SFW images"; echo "-h    | Shows this menu"}
Else{If($s -eq $True){$api = "https://nekos.life/api/v2/img/neko"; echo "Using SFW images"; Start-Sleep -Seconds 1; cls};If($n -eq $True){$api = "https://nekos.life/api/v2/img/lewd"; echo "Using NSFW images"; Start-Sleep -Seconds 1; cls};$url = ((iwr $api -UseBasicParsing).Content | ConvertFrom-Json).url;iwr $url -OutFile neko.jpg -UseBasicParsing;winfetch -image neko.jpg;Remove-Item neko.jpg}
$ProgressPreference = $oldpp
