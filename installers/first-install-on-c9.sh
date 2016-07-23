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
# Updating the server
################################################################################
echo "Updating the server"
sh deploy/deploy.sh
################################################################################
# Updating the PHP version and server
#
# You will need to look at this file as there is one input during the php 
# upgrade: https://github.com/Puzzlout/CloudDeploy/blob/master/php-upgrade.sh
################################################################################
echo "Updating the PHP version and server..."
bash deploy/php-upgrade.sh 7.0.8
################################################################################
# Installing the applications
################################################################################
echo "Installing the applications"
sh deploy/Projects/TrekTours/Api/install-c9.sh prod
sh deploy/Projects/TrekTours/Flyer/install-c9.sh prod
