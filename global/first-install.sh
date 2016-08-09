################################################################################
# First install script
# 
# Input $1: the current install directory
# Input $2: the target server:
# 	-> local
#	-> c9: a Cloud9 workspace
#	-> lw: a LiquidWeb Storm VPS
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
