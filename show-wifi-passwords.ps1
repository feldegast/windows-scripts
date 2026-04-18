(netsh wlan show profiles) | Select-String "\:(.+)$" | %{$network=$_.Matches.Groups[1].Value.Trim(); $_} | %{(netsh wlan show profile name="$network" key=clear)} | Select-String "Key Content\W+\:(.+)$" | %{$password=$_.Matches.Groups[1].Value.Trim(); $_} | %{[PSCustomObject]@{ NETWORK_NAME=$network;PASSWORD=$password }} | Format-Table -AutoSize
pause
