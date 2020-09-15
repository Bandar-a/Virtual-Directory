$Websites = Get-WmiObject -Namespace "root/MicrosoftIISv2" -Class IIsWebVirtualDirSetting | Select-Object -ExpandProperty Path -Unique | Sort-Object
Get-ChildItem -path $Websites -Recurse -Force -File | Get-FileHash | Sort-Object -Property 'Path' | ConvertTo-Csv -NoTypeInformation | Select-Object -Skip 1
