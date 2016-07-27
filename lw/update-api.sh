################################################################################
# Installing updates of the applications
# 
# Input $1: the git tag to release the updates
################################################################################
echo "Updating the application API"
if [ "$1" == "" ]
	then
		echo "WARNING: you must include a git tag to install updates for API!"
fi
if [ "$1" != "" ]
	then
		cd /home/puzzlout/public_html/trektours/deploy/Projects/TrekTours/Api
		bash update-lw.sh prod $1
fi
echo "Updates have been run"

