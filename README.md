# BodenBot Rover Packages

## Structure

### boden_bringup

Launch scripts for starting robot services.

### boden_description

Description of the robot in URDF format.

### boden_interfaces

Communication interfaces for the rover such as the docking action request.

### boden_misc

Various nodes used in the running of the rover like the motor driver and
docking action server.

### boden_navigation

The package with configuration for the navigation stack used by the rover.

### traverse_layer

Implementation of traversability mapping used for obstacle avoidance in
uneven terrain.

### webots_dev

Package for launching the webots simulation.

## Installation

### Things to install before proceeding:

**Install [docker](https://www.docker.com/products/docker-desktop/)**

**Install [git](https://git-scm.com/downloads)**

**Setup GitHub SSH keys**
- [Generate SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- [Add SSH Key to GitHub Account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

### Downloading Haql-Rover

Open a bash terminal and run:
```console
git clone git@github.com:team3-haql/haql-rover.git
```
Change directory to ```haql-rover``` and run:
```console
docker-compose up
```
To install needed image and packages.

## Compilation
You can run docker in bash mode by typing:
```console
. 
```