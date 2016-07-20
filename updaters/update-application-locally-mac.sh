################################################################################
# Installing updates of the applications
# 
# Input $1: the git tag to release the API updates
# Input $2: the git tag to release the Flyer updates
################################################################################
################################################################################
# Updating the application API
################################################################################
echo "Updating the application API"
if [[ $1 == *""*]]
	then
		echo "WARNING: you must include a git tag to install updates for API!"
fi
if [[ $1 != *""*]]
	then
		sh /www/sites/deploy/Projects/TrekTours/Api/update-locally-unix.sh prod $1
fi
################################################################################
# Updating the application Flyer
################################################################################
echo "Updating the application Flyer"
if [[ $2 == *""*]]
	then
		echo "WARNING: you must include a git tag to install updates for Flyer!"
fi
if [[ $2 != *""*]]
	then
		sh /www/sites/deploy/Projects/TrekTours/Flyer/update-locally-unix.sh prod $2
fi

echo "Updates have been run"

