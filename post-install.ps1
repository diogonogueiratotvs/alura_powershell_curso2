#script que baixará e instalará os pacotes necessários para automação da máquina.

#instalação do Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#pacotes sem params
$pacotesSemParam = @(
    [pscustomobject]@{Nome='7zip.install'}
    [pscustomobject]@{Nome='googlechrome'}
    [pscustomobject]@{Nome='jre8'}
    [pscustomobject]@{Nome='vcredist140'}
    [pscustomobject]@{Nome='k-litecodecpackfull'}
    [pscustomobject]@{Nome='whatsapp'}
)

$pacotesComParam = @(
[pscustomobject]@{Nome='office2019proplus';Param='/ConfigPath:https://raw.githubusercontent.com/dsbnogueira/deployment_tools/main/deployment_office2019.xml'}
[pscustomobject]@{Nome='adobereader';Param='"/DesktopIcon /UpdateMode:4"'}
)

foreach ($i in $pacotesSemParam){
    #Addlog -type Information -message "Instalando"+$i.Nome
    # choco install $i.Nome --y --force
    # If ($? -ne $True) { Addlog -type Erro -message "Falha ao instalar $i" }
    Write-Host $i.Nome
}

foreach ($p in $pacotesComParam){
    Write-Host 'choco install' $p.Nome'-Param' $p.Param '--y --force'
}


