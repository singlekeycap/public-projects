param (
    [string]$sfw = "sfw"
)
if($sfw -eq "sfw"){$api = "https://nekos.life/api/v2/img/neko"; echo "Using SFW images"; Start-Sleep -Seconds 1; cls}
if($sfw -eq "nsfw"){$api = "https://nekos.life/api/v2/img/lewd"; echo "Using NSFW images"; Start-Sleep -Seconds 1; cls}
$url = ((iwr $api).Content | ConvertFrom-Json).url
iwr $url -OutFile neko.jpg
winfetch -image neko.jpg
Remove-Item neko.jpg
