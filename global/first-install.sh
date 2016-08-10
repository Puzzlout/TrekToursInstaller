################################################################################
# First install script
# 
# Input $1: the current install directory
# Input $2: the target server:
# 	-> local
#	-> c9: a Cloud9 workspace
#	-> lw: a LiquidWeb Storm VPS
# Input $3: the branch to deploy install from
################################################################################
################################################################################
# Parameters check
################################################################################
if [ $1 == "" ]
	then
		exit "The first argument is missing. It must be the folder where the applications needs to be installed."
fi
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
*)
    exit "The server Parameter is not given nor. Valid value: local, c9, lw."
    ;;
esac
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
bash deploy/Projects/TrekTours/Api/install.sh prod $1 $2
bash deploy/Projects/TrekTours/Flyer/install.sh prod $1 $2
################################################################################
# Navigating to the root folder 
################################################################################
cd ..
