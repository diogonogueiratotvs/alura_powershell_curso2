param($diretorio)

$diretorio = "C:\Users\Diogo\OneDrive\DevOps\Powershell\files\"

$ErrorActionPreference = "Stop"

. .\ShaFiles.PS1

$arquivos = Get-ChildItem $diretorio -File

foreach ($item in $arquivos) {
    $hashItem = Get-FileSHA1 $item
    Write-Host "O Hast do arquivo $item é $hashItem !" #asd
}