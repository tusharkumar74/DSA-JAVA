 $folder = "C:\Users\lenovo\OneDrive\Desktop\Striver"

$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $folder
$watcher.Filter = "*.java"
$watcher.IncludeSubdirectories = $true
$watcher.NotifyFilter = [System.IO.NotifyFilters]::LastWrite

Register-ObjectEvent $watcher Changed -Action {
    Start-Sleep -Seconds 2

    Set-Location "C:\Users\lenovo\OneDrive\Desktop\Striver"

    git add "*.java"

    if (git diff --cached --quiet) {
        return
    }

    git commit -m "Auto update DSA"
    git push origin main

    Write-Host "Uploaded to GitHub!"
}

$watcher.EnableRaisingEvents = $true

Write-Host "Auto GitHub upload is running..."
Write-Host "Save any .java file to test."
Write-Host "Press Ctrl+C to stop."

while ($true) {
    Wait-Event -Timeout 5
}