################################################################################
# First install script
# 
# Input $1: the current install directory
#
# Input $2: the target server:
# 	-> local
#	-> c9: a Cloud9 workspace
#	-> lw: a LiquidWeb Storm VPS
#
# Input $3: defines what we install. 
#	Values: 
#		-> api: parameter $4 will be used if given
#		-> flyer: parameter $4 will be used if given
#		-> all: parameter $4 will not be used.
#		TODO: accept array of tags when $3 is all to specify the tag to install for api and flyer
# 
# Input $4: the tag to deploy the install from.
#
################################################################################
# Parameters check
################################################################################
if [ $1 == "" ]
	then
		exit "The first argument is missing. It must be the folder where the applications needs to be installed."
fi
useLocalComposer="0"
case "$2" in
'local')
    echo "Installing on local server..."
    ;;
'c9')
    echo "Installing on Cloud9 workspace..."
    ;;
'lw')
    echo "Installing on LiquidWeb VPS..."
    ;;
'hh')
    echo "Installing on HurrayHost..."
    useLocalComposer="1"
    ;;
*)
    exit "The server parameter is not given nor a valid value. Valid values: local, c9, lw."
    ;;
esac
# case "$3" in
# 'api')
#     echo "Only API will be installed."
#     ;;
# 'flyer')
#     echo "Only Flyer will be installed."
#     ;;
# 'all')
#     echo "API and Flyer will be installed."
#     $all = 1
#     ;;
# *)
#     exit "The third parameter is not given nor a valid value. Valid values: api, flyer, all."
#     ;;
# esac

################################################################################
# Navigating to the install folder 
################################################################################
cd $1
################################################################################
# Cloning the repositories
################################################################################
echo "Cloning the repositories..."
git clone https://github.com/Puzzlout/CloudDeploy.git
git clone https://github.com/Puzzlout/TrekToursFlyer.git
git clone https://github.com/Puzzlout/TrekToursApi.git
################################################################################
# Renaming cloned repositories
################################################################################
echo "Renaming cloned repositories..."
mv CloudDeploy deploy
mv TrekToursFlyer public
mv TrekToursApi api
################################################################################
# Installing the applications
################################################################################
echo "Installing the applications"
bash deploy/Projects/TrekTours/Api/install.sh prod $1 $2 $4
bash deploy/Projects/TrekTours/Flyer/install.sh prod $1 $2 $4
################################################################################
# LiquidWeb permissions
################################################################################
if [ $2 == "lw" ]
	then
		logout
		chmod -R 755 "/home/puzzlout/public_html/$1"
fi