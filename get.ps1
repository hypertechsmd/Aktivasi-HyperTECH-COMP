# URL file CMD kamu
$cmdUrl = "https://raw.githubusercontent.com/hypertechsmd/Aktivasi-HyperTECH-COMP/main/aktivasi.cmd"

$tempFile = "$env:TEMP\hypertech.cmd"

try {
    Invoke-WebRequest -Uri $cmdUrl -OutFile $tempFile
} catch {
    Write-Host "Gagal download CMD!"; exit
}

# Jalankan CMD
Start-Process -FilePath "cmd.exe" -ArgumentList "/c `"$tempFile`"" -Verb RunAs -Wait
