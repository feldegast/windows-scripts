Get-NetAdapter -IncludeHidden | where status -eq 'up'

Get-NetAdapter -IncludeHidden | where status -eq 'up'  | Format-List -Property “Name”, “InterfaceDescription”, “InterfaceName”

pause
