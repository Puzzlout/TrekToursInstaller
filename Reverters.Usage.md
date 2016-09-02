# The Reverters scripts

They work locally, on Cloud9 and more.

***IMPORTANT:*** The tags must exist on the given repositories to make the procedure work.

# Example usage locally on UNIX systems

Identical to the update procedure but you ***MUST*** a release tag preceding the one installed. See [updater's MD](https://github.com/Puzzlout/TrekToursInstaller/blob/master/Updaters.Usage.md)

Example:

If the update install was
```
bash sites/global/update-api.sh '1.0.4' 'sites/' 'local'
bash sites/global/update-flyer.sh '1.0.6' 'sites/' 'local'
```

The revert install could be:
```
bash sites/global/update-api.sh '1.0.3' 'sites/' 'local'
```
or / and:
```
bash sites/global/update-flyer.sh '1.0.5' 'sites/' 'local'
```

# Example usage on Cloud 9

TODO
