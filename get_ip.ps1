[array] $IP_INFO = ipconfig

$IP_LINE = $IP_INFO[3]
$SECTION = $IP_INFO -like "*Ethernet adapter vEthernet (WSL):*"

$SECION_IDX = $IP_INFO.IndexOf($SECTION)
$IPV4_LINE = $($IP_INFO[$($SECION_IDX..$($SECION_IDX+5))]) -like "*IPv4 Address*"

$WSL_IP_ADDR = $($($IPV4_LINE -split ":")[1]).Trim():
#foreach ($line in $IPV4_LINE) { Write-Host $line }
