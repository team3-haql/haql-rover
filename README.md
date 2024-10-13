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

**Install [vscode](https://code.visualstudio.com/download) and download the Dev Countainer Extension**

**Setup GitHub SSH keys**
- [Generate SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- [Add SSH Key to GitHub Account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

### Downloading Haql-Rover

Open a bash terminal and run:
```console
git clone git@github.com:team3-haql/haql-rover.git
```
to download the repository.

After downloading the repo open it in VSCode.
Click the blue button in the bottom left hand corner.
Select the "Reopen in Container" option from the dropdown at the top of the screen.
This will automatically run docker and download the container.

After the container has installed run:
```console
cd /root/ralphee_ws
. install-deps.bash
. compile.bash
```
in the terminal to download dependencies and compile the code.

## Trouble Shooting:

If errors are encountered while compiling delete the "build", "log", and "install" folders and try again.
If intellisense is broken try to reopen the project.