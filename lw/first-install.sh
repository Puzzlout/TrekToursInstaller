pathApi="/home/puzzlout/public_html/$1/deploy/Projects/TrekTours/Api"
pathFlyer="/home/puzzlout/public_html/$1/deploy/Projects/TrekTours/Flyer"
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
cd $pathApi
bash install-lw.sh prod $1
cd $pathFlyer
bash install-lw.sh prod $1
cd "/home/puzzlout/public_html/"
su
chmod -R 755 "$1/"