################################################################################
# Refresh of the applications when we update a file and that cache must be 
# rebuilt
# 
# Input $1: full absolute path to install directory
# Input $2: the target server:
# -> local
#	-> c9: a Cloud9 workspace
#	-> lw: a LiquidWeb Storm VPS
################################################################################
echo "Updating the application API"
if [ "$1" == "" ]
	then
		echo "WARNING: you must include the installation path of the applications"
		exit 0
fi
if [ "$1" != "" ]
	then
		sh $1/deploy/Projects/TrekTours/Api/refresh.sh prod $1
		sh $1/deploy/Projects/TrekTours/Flyer/refresh.sh prod $1
fi
echo "Updates have been run"
if [ $2 == "lw" ]
	then
		su
		chown -R puzzlout "$1/"
		chmod -R 755 "$1/"
fi

