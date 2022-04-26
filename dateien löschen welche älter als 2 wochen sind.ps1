$Pfad = "[Path]"
$Tage = "-14"
 
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Tage)
Get-ChildItem $Pfad -Recurse | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item