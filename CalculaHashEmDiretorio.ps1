param($diretorio)
Import-Module .\ShaFiles.ps1
$ErrorActionPreference = "Stop"

#$diretorio = 



$arquivos = Get-ChildItem $diretorio -File

foreach ($item in $arquivos) {
    $hashItem = Get-FileSHA1 $item
    Write-Host "O Hash do arquivo $item é $hashItem !" #asd
}