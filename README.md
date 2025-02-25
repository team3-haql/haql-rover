# BodenBot Rover Packages

## Credit

### Bodenbot
This project is based off [Bodenbot](https://github.com/team19-haql/haql-rover/commits/main/) which was developed primarily by [Deweykai](https://github.com/deweykai).

### Zigmaps
This project also includes [Zigmaps](https://github.com/deweykai/zigmaps) a library developed by [Deweykai](https://github.com/deweykai) for this project.

## Structure

### bodenbot

### boden_interfaces

Communication interfaces for the rover such as the docking action request.

### boden_scripts

### traverse_layer

Implementation of traversability mapping used for obstacle avoidance in
uneven terrain.

### webots_dev

Package for launching the webots simulation.

## Installation

### Things to install before proceeding:

**Install [docker](https://www.docker.com/products/docker-desktop/)**

**Install [git](https://git-scm.com/downloads)**

**Install [vscode](https://code.visualstudio.com/download)**

**Install [dev containers extension for vscode](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)** (NOTE: This can be done inside vscode)

**Setup GitHub SSH keys**
- [Generate SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- [Add SSH Key to GitHub Account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

### Downloading and Compilation

Run this to download the repository:
```console
git clone git@github.com:team3-haql/haql-rover.git --recursive
```

After downloading the repository open it in VSCode.
Click the blue button in the bottom left corner.
Select the "Reopen in Container" option from the dropdown at the top of the screen.
This will automatically run docker and download the container.

After the container has been installed run the following to download dependencies and compile the code.
```console
cd ~/haql-rover
. install-deps.bash
. compile.bash
```

## Setup VSCode
In order to make intellisense work perform the following:

- Create a folder called ```.vscode``` in haql-rover
- Create a file called ```c_cpp_properties.json``` in ```haql-rover/.vscode```. Paste the following in:
```json
{
    "configurations": [
      {
        "browse": {
          "databaseFilename": "${default}",
          "limitSymbolsToIncludedHeaders": false
        },
        "includePath": [
          "/opt/ros/humble/include/**",
          "/usr/include/**"
        ],
        "name": "ROS",
        "intelliSenseMode": "gcc-x64",
        "compilerPath": "/usr/bin/gcc",
        "cStandard": "gnu11",
        "cppStandard": "c++17",
        "compileCommands": "${workspaceFolder}/build/compile_commands.json"
      }
    ],
    "version": 4
}
```
- Create a file called ```settings.json``` in ```haql-rover/.vscode```. Paste the following in:
```json
{
    "python.autoComplete.extraPaths": [
      "/opt/ros/humble/lib/python3.10/site-packages",
      "/opt/ros/humble/local/lib/python3.10/dist-packages",
      "{workspaceFolder}/build/bodenbot_scripts",
      "{workspaceFolder}/build/px4_coms",
      "{workspaceFolder}/build/webots_dev"
    ],
    "python.analysis.extraPaths": [
      "/opt/ros/humble/lib/python3.10/site-packages",
      "/opt/ros/humble/local/lib/python3.10/dist-packages",
      "{workspaceFolder}/build/bodenbot_scripts",
      "{workspaceFolder}/build/px4_coms",
      "{workspaceFolder}/build/webots_dev"
    ]
}
```