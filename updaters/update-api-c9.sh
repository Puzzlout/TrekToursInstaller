################################################################################
# Updating the server
################################################################################
echo "Updating the server"
sh deploy/deploy.sh
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
		sh deploy/Projects/TrekTours/Api/update-c9.sh prod $1
fi
echo "Updates have been run"