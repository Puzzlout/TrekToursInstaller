################################################################################
# Installing updates of the applications
# 
# Input $1: the git tag to release the API updates
################################################################################
echo "Updating the application Flyer"
if [ "$1" == "" ]
	then
		echo "WARNING: you must include a git tag to install updates for Flyer!"
fi
if [ "$1" != "" ]
	then
	sh /www/sites/deploy/Projects/TrekTours/Flyer/update-locally-unix.sh prod $1
fi

echo "Updates have been run"

