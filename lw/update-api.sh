################################################################################
# Installing updates of the applications
# 
# Input $1: the git tag to release the updates
# Input $2: current directory
################################################################################
echo "Updating the application API"
if [ "$1" == "" ]
	then
		echo "WARNING: you must include a git tag to install updates for API!"
fi
if [ "$1" != "" ]
	then
		cd /home/puzzlout/public_html/$2/deploy/Projects/TrekTours/Api
		bash update-lw.sh prod $1 $2
fi
echo "Updates have been run"

