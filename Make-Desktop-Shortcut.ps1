  param(
    [string]$PagesUrl,
    [string]$Alias = "SmagruppA"
  )
  if (-not $PagesUrl) {
    $PagesUrl = Read-Host "Ange din GitHub Pages-URL (t.ex. https://user.github.io/schema-app/)"
  }
  if (-not $Alias) {
    $Alias = Read-Host "Ange alias (t.ex. SmagruppA)"
  }
  $url = "$PagesUrl`?db=$Alias"
  $desktop = [Environment]::GetFolderPath("Desktop")
  $lnk = Join-Path $desktop "Schema ($Alias).url"
  @"
[InternetShortcut]
URL=$url
"@ | Set-Content -Path $lnk -Encoding ASCII
  Write-Host "Genväg skapad:" $lnk
