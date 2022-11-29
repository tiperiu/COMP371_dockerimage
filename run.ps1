$PROJECT_NAME=$args[0]
$CODE_PATH=$args[1] # Must be absolute path

# Get WSL IP Address for X Server

[array] $IP_INFO = ipconfig

$IP_LINE = $IP_INFO[3]
$SECTION = $IP_INFO -like "*Ethernet adapter vEthernet (WSL):*"

$SECION_IDX = $IP_INFO.IndexOf($SECTION)
$IPV4_LINE = $($IP_INFO[$($SECION_IDX..$($SECION_IDX+5))]) -like "*IPv4 Address*"

$WSL_IP_ADDR = $($($IPV4_LINE -split ":")[1]).Trim()

# Set $DISPLAY variable (Defaulting to 0.0)
$DISPLAY = "${WSL_IP_ADDR}:0.0"

# Breaking down the docker command:
#
#    docker run \
#        --name COMP371 \ # Name of the container
#        --rm \ # Delete container after exiting
#        -v $CODE_PATH:/src/code \ # Binds CODE_PATH to /src/code inside the container
#        -e DISPLAY=$DISPLAY \ # Required for X Server
#        comp371:W22 \ # Name of the image (main positional argument for docker run)
#        $PROJECT_NAME

docker run --name COMP371 --rm -v ${CODE_PATH}:/src/code -e DISPLAY=${DISPLAY} comp371:W22 $PROJECT_NAME

