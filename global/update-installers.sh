################################################################################
# Update the installer scripts
# 
# Input $1: the current install directory
################################################################################
git pull
cd $1/deploy
git pull