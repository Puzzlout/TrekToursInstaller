################################################################################
# Update existing applications
################################################################################
echo "Update existing applications"
sh /www/sites/deploy/Projects/TrekTours/Api/refresh-locally-mac.sh prod
sh /www/sites/deploy/Projects/TrekTours/Flyer/install-locally-mac.sh prod
