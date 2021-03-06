################################################################################
# Installing updates of the applications
# 
# Input $1: the git tag to release the Flyer updates
# Input $2: full absolute path to install directory
# Input $3: the target server:
# -> local
#	-> c9: a Cloud9 workspace
#	-> lw: a LiquidWeb Storm VPS
################################################################################
echo "Updating the application Flyer"
if [ "$1" == "" ]
	then
		echo "WARNING: you must include a git tag to install updates for Flyer!"
fi
if [ "$1" != "" ]
	then
	  sh $2/deploy/Projects/TrekTours/Flyer/update.sh prod $1 $2
fi
echo "Updates have been run"
if [ $3 == "lw" ]
	then
		su
		chown -R puzzlout "$2/"
		chmod -R 755 "$2/"
fi
