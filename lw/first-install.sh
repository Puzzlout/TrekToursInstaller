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
cd /home/puzzlout/public_html/trektours/deploy/Projects/TrekTours/Api
bash install-lw.sh prod
cd /home/puzzlout/public_html/trektours/deploy/Projects/TrekTours/Flyer
bash install-lw.sh prod