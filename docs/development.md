## Development Guide


LOOK AT ref1 569
LOOK AT ref1 569
LOOK AT ref1 569
LOOK AT ref1 569
LOOK AT ref1 569
LOOK AT ref1 569

### Introduction

This 2 part development guide provides an overview and explanation of the functionalities implemented in the main `.sys` Bash script as well as how to introducing new operating system.

## Part 1: Main Bash Script

The code is designed to manage and install various software ecosystems on different operating systems in a generic fashion. 
It utilizes a set of options to determine the ecosystems to be installed and supports features such as initialization, error handling, and logging.

**Ecosystems Array**
The script defines an associative array ecosystems that maps ecosystem flags to their corresponding display names. This array is used to identify and select specific ecosystems throughout execution.

```bash
declare -A ecosystems
ecosystems["--python"]="Python"
ecosystems["--cloud"]="Cloud"
ecosystems["--containers_vms"]="Containers and VMs"
ecosystems["--db_clients"]="Database Clients"
ecosystems["--javascript_node"]="JavaScript and Node"
ecosystems["--web_tools"]="Web Tools"
ecosystems["--java"]="Java"
ecosystems["--c_c++"]="C and C++"
ecosystems["--go"]="Go"
...
...
...
...
```

2. Argument Validation
The check_args function validates the command-line arguments passed to the script. It ensures that the provided options are either valid ecosystem flags or the --init flag for initialization.

3. CLI Screen Display
The show_cli_screen function generates a help message, displaying available options and usage instructions. This information is displayed when invalid arguments are provided.

4. OS Detection
The detect_system function determines the operating system on which the script is running by checking the existence of /etc/os-release file or identifying macOS based on the uname command.

5. Script Execution
The exec_script function executes a given script for a specified ecosystem. It captures the output and logs any errors to /var/log/progsys.log.

6. Core Software Installation
The install_core_software function installs core software by executing the initialization script and subsequent scripts in the core directory. It ensures that the core installation is performed only once by using a lock file.

7. Ecosystem Installation
The install_ecosystem function installs a specific ecosystem based on the provided ecosystem key and script line. It sanitizes the script line and matches it to a corresponding script file in the ecosystem directory.

8. Main Installation Logic
The install_ecosystems function orchestrates the installation of selected ecosystems based on the provided flags and the content of the requirements.txt file.

9. Main Function
The main function serves as the entry point for the script. It performs tasks such as prompting for sudo privileges, checking arguments, detecting the operating system, defining system-related functions, and initiating the installation process.

## Part 2: OS Implementation

This development guide provides an overview and explanation of the functionalities implemented in the provided Bash script. The script is designed for setting up a development environment by installing general dependencies and tools. It includes installation commands for packages such as Docker, Node.js, and Visual Studio Code. The script also ensures the availability of necessary dependencies and sets up a log file.

Script Overview
1. User Information
The script starts by obtaining the username using the whoami command and assigns it to the variable user.

2. Package Updates
The script runs sudo apt-get update -y to ensure that the package information is up-to-date.

3. General Dependencies Installation
The script installs a set of general dependencies required for development. These dependencies include tools like curl, ca-certificates, software-properties-common, autoconf, unzip, zip, build-essential, gpg, git, tree, zlib1g-dev, libreadline-dev, libssl-dev, and libcurl4-openssl-dev.

4. Specific Python Dependencies
The script installs specific Python dependencies using the apt-get install command for Python 3.11, its virtual environment (python3.11-venv), and development headers (python3.11-dev). Additionally, it ensures that python-is-python3 is installed.

5. Docker Installation
If Docker is not already installed (checked with command -v docker), the script downloads and executes the Docker installation script from get.docker.com. It also starts and enables the Docker service using systemctl.

6. Node.js Installation
If Node.js is not already installed (checked with command -v node), the script uses curl to download and execute the Node.js setup script. It then installs Node.js and configures the NPM environment variables in the user's .bashrc file.

7. Visual Studio Code Installation
If Visual Studio Code (VSCode) is not already installed (checked with command -v code), the script adds Microsoft's GPG key, sets up the VSCode repository, and installs the application using apt-get. This step ensures that VSCode is available as the base editor for ecosystems with many extensions.

8. Log File Setup
The script creates a log file at /var/log/progsys.log and sets its permissions to allow write access. This log file is used to capture output and potential errors during the execution of the script.
