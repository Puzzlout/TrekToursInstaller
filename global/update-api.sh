################################################################################
# Installing updates of the applications
# 
# Input $1: the git tag to release the API updates
# Input $2: full absolute path to install directory
# Input $3: the target server:
# -> local
#	-> c9: a Cloud9 workspace
#	-> lw: a LiquidWeb Storm VPS
################################################################################
echo "Updating the application API"
useLocalComposer="0"
if [ "$3" = "hh" ]
	then
		$useLocalComposer="1"
fi
if [ "$1" == "" ]
	then
		echo "WARNING: you must include a git tag to install updates for API!"
fi
if [ "$1" != "" ]
	then
		sh $2/deploy/Projects/TrekTours/Api/update.sh prod $1 $2 $useLocalComposer
fi
echo "Updates have been run"
if [ $3 == "lw" ]
	then
		su
		chown -R puzzlout "$2/"
		chmod -R 755 "$2/"
fi

