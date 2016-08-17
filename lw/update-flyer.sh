################################################################################
# Installing updates of the applications
# 
# Input $1: the git tag to release the API updates
# Input $2: current directory
################################################################################
echo "Updating the application Flyer"
if [ "$1" == "" ]
	then
		echo "WARNING: you must include a git tag to install updates for Flyer!"
fi
if [ "$1" != "" ]
	then
		cd /home/puzzlout/public_html/$2/deploy/Projects/TrekTours/Flyer
		bash update-lw.sh prod $1 $2
fi

echo "Updates have been run"

