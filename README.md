# TrekToursInstaller

The repository within which the applications will be installed.
Sources:
- [Deployment helpers scripts](https://github.com/Puzzlout/CloudDeploy)
- [TrekTours flyer website application](https://github.com/Puzzlout/TrekToursFlyer)
- [TrekTours API application](https://github.com/Puzzlout/TrekToursApi)

# Requirements

You need:

- [Git](https://git-scm.com/) and a [Github account](https://github.com/)
- [Composer](https://getcomposer.org/)
- [NodeJS package manager](https://www.npmjs.com/) (for Bower install in the website application)
- A PHP 7 server (***The API will not work with PHP 5***). Checkout [MAMP](https://www.mamp.info/) for MAC or [XAMP](https://www.apachefriends.org/fr/index.html) for Windows, Linux and MAC
- [MySQL 5 server](https://www.mysql.com/downloads/) and a root user with no password. You can easily create that user with [MySQL workbench](https://www.mysql.fr/products/workbench/)

# Local setup and installation on Linux and Macintosh computers

The installers are setup so that your DocumentRoot is `/www/sites` and your folder structure will be:

```
www
  |__ sites
		  |__ api
		  |__ deploy
		  |__ public
```

The folders "api", "deploy" and "public" will be created with the installer "first-install-locally-mac.sh" script.

Please follow the following step to setup your machine. Run those commands with Terminal:
```
cd ~
mkdir wwww
cd wwww
# clone this repository
git clone https://github.com/Puzzlout/TrekToursInstaller.git
bash local-unix/first-install.sh
```

While the installers are running:

1. You should not see any error except for the trektoursapi database warm up. Let the installer finish.
2. When prompted about the parameters for the API, hit return if you want to keep the default (***recommended***).
3. When prompted about the parameters for the Flyer, input your API service URL if you decided to use the virtual host 
and that "http://localhost/api/web" is not your URL. 

# Local setup and installation on Windows computers

Coming soon...

# [Cloud 9 IDE](http://c9.io/) installation

- Create a new workspace and input `https://github.com/Puzzlout/TrekToursInstaller.git` in "Clone from Git".
- Run `bash c9/first-install.sh` (***READ THE NOTES BEFORE RUNNING THIS COMMAND***)

Note 1: it will update the server and the PHP version to 7.0.8. Check out the script `php-upgrade.sh` in the `deploy` folder

Note 2: when prompted for the API database name, input "c9".

Note 3: when prompted for the API service URL during the website installation, input "https://***{{your workspace name}}***-***{{your c9 username}}***.c9users.io/api/web/app.php.
