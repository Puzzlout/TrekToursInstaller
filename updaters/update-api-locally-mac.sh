################################################################################
# Installing updates of the applications
# 
# Input $1: the git tag to release the updates
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
echo "Updates have been run"

