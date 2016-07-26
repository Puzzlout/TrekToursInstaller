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
sh /home/puzzlout/www/trektours/deploy/Projects/TrekTours/Api/install-lw.sh prod
sh /home/puzzlout/www/trektours/deploy/Projects/TrekTours/Flyer/install-lw.sh prod
