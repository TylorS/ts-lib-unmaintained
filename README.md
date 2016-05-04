# Awesome TypeScript Library Starter

A starting place for creating libraries in TypeScript

## Features
  - Mocha and power-assert for testing
  - Code coverage
  - TypeScript
  - Documentation Generation
  - Scripted versioning and releases
  
## Design

This starter is designed to be worked on from the `develop` branch, so you
can setup automatic deployments via TravisCI when pushing to the master branch.

## Usage

First Create your repository on Github, then from your command line
 
```shell
$ khaos install TylorS/ts-lib
$ hhaos create ts-lib package-name
$ cd awesome-package-name
$ bash ./tools/finish_setup.sh
$ rm -rf ./tools
```

On Travis-CI:

- Enable the new repository
- Go to settings and enable: `Build only if .travis.yml is present`

Back on Github:

- At your new repository choose **Settings > Branches**
- Change default branch from *master* to *develop* and choose **Update**
- Under **protected branches** select *master* branch
- Check **protect this branch**
- Check **require status checks to pass before merging** (including maintainers)
- Save your changes
