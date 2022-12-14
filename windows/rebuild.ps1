<#
Delete the COMP371 container and image and rebuild
#>

Start-Process PowerShell -ArgumentList ".\delete_container.ps1" -Wait

Start-Process docker -ArgumentList "rmi","comp371:W22" -Wait # Delete image

Start-Process PowerShell -ArgumentList ".\build_docker.ps1" -Wait

