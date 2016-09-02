# The updaters

They work locally, on Cloud9 and more.

***IMPORTANT:*** The tags must exist on the given repositories to make the procedure work.

# Example usage on UNIX systems

```
bash sites/global/update-installers.sh
bash sites/global/update-api.sh '1.0.4' 'sites/' 'local'
bash sites/global/update-flyer.sh '1.0.6' 'sites/' 'local'
```

Parameter 1: the update version to install. 
Parameter 2: the target directory to install the update.
Parameter 3: the target environnement (local, lw).

***Always put each parameter between single quotes.***

# Example usage on Cloud 9

```
bash c9/update-installers.sh
bash c9/update-api.sh 1.0.0.44
bash c9/update-flyer.sh 1.0.0.322
```
