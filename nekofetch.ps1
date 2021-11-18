$url = ((iwr https://nekos.life/api/v2/img/neko).Content | ConvertFrom-Json).url
iwr $url -OutFile neko.jpg
winfetch -image neko.jpg
Remove-Item neko.jpg