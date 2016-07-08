git clone https://github.com/Puzzlout/CloudDeploy.git
mv CloudDeploy deploy
git clone https://github.com/Puzzlout/TrekToursFlyer.git
mv TrekToursFlyer public
git clone https://github.com/Puzzlout/TrekToursApi.git
mv TrekToursApi api
sh deploy/deploy.sh
sh deploy/php-upgrade.sh 7.0.3
sh deploy/Projects/TrekTours/Api/install.sh prod
sh deploy/Projects/TrekTours/Flyer/install.sh prod