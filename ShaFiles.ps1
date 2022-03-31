function Get-FileSHA1($filePath) {
    $fileContent = Get-Content $filePath
    $fileBytes = [System.Text.Encoding]::UTF8.GetBytes($fileContent)

    $sha1 = New-Object System.Security.Cryptography.SHA1Managed

    $hash = $sha1.ComputeHash($fileBytes)

    $prettyHashSB = New-Object System.Text.StringBuilder

    foreach ($byte in $hash) {
        $hexaNotation = $byte.ToString("X2")
        $null = $prettyHashSB.Append($hexaNotation)
    }

    $prettyHashSB.ToString()
}

# $arquivo = "C:\Users\Diogo\OneDrive\DevOps\alura_powershell_curso2\ShaFiles.ps1"
# $hashDoArquivo = Get-FileSHA1 $arquivo

# Write-Host "O hash do arquivo $arquivo eh $hashDoArquivo" -BackgroundColor Red -ForegroundColor Yellow





