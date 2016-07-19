################################################################################
# Updating the server
################################################################################
echo "Updating the server"
sh deploy/deploy.sh
################################################################################
# Installing the applications
################################################################################
echo "Installing the applications"
sh deploy/Projects/TrekTours/Api/update-c9.sh prod
sh deploy/Projects/TrekTours/Flyer/update-c9.sh prod
