## Development Guide

## Welcome

This guide provides an overview of the main script functions, how the scripts run, and how to include your own OS.

This project aims to reduce the time-consuming and error-prone process of setting up a dev machine. While there are many provisioning system options out there (typically for cloud), not many prioritizes simplicity and accessibility. The project favors a philosophy "it's all just scripts" with limited abstraction.

Your contributions are greatly appreciated with this new and ambitious project.


## Current Ecosystems

|                       |                       |                       |                       |
|-----------------------|-----------------------|-----------------------|-----------------------|
| Python                | JavaScript and Node   | Web Tools             | Cloud                 |
| Containers and VMs    | Database Clients      | Version Control       | C and C++             |
| Java                  | Go                    | PHP                   | Rust                  |
| Ruby                  |                       |                       |                       |

## Current OS Support

Current support: Ubuntu 22.04 LTS and Fedora 39.


## Part 1: Main Script

The `sys` script acts as the engine and CLI of the system. It intelligently installs specific software ecosystems across different operating systems in a generic manner. It enables many functions, OS detection and initialization, exposing helper functions to scripts, error handling, and ensuring idempotency.

### CLI / Initialization

The script defines an associative array at the very top that maps ecosystems to their corresponding display names in the CLI and the keys referenced throughout the execution.

```bash
declare -A ecosystems
ecosystems["--python"]="Python"
ecosystems["--cloud"]="Cloud"
ecosystems["--containers_vms"]="Containers and VMs"
...
...
```

Before execution, users will want to specify what packages are to be installed at the selected ecosystem level. For example, suppose a Java developer only needs version management, Eclipse, and Gradle. They can represent this by commenting out what isn't needed in the "`## Java ##`" section of `Fedora` > `requirements.txt`:

```
## Java ##
SDKMAN
Eclipse
#IntelliJ IDEA Community
#Maven
Gradle
#Ivy
#Ant
#VSCode Java
```

The user can now invoke the CLI to start the installation process. All inputs are validated - a help/usage screen will appear if a flag doesn't exist. Example use:

```bash
./sys --cloud --web_tools --javascript_node --db_clients --python --containers_vms \
      --java --version_control
```


### main()

This function is responsible for running all major functions as well as exposing functions that can be referenced in the ecosystem scripts. The following steps shows only the flow of the function. Individual functions will be described in their own section.

1. Prompt user to provide password
2. Calling the aforementioned `check_args()` for input validation
3. Dynamically detecting the OS (typically by distribution name) via `detect_system()`
4. Setting needed variables for execution
5. Exporting functions to be used in scripts such as `sys_check()` and `sys_exec()`
6. Determine if the:
- OS needs to be resolve dependencies and base configurations in `install_core_system()`
- (or) If the system is ready to run the scripts via `install_ecosystems()`


### detect_system()

This function determines the OS by accessing information from the `/etc/os-release` file or `uname` command.

### exports

`sys_check()` takes in the "package name", which represents a its directory path. This is used by folks creating/editing scripts to ensure the installation runs only once.

`sys_exec()` is used to call another script in a an existing script. It takes in the which is presumably script for execution. This is primary used to called "shared" functions.

### install_core_software()

This function installs the required software by calling each OS's custom initialization script and supporting scripts in the "`#Core`" directory. Upon execution completion, the ecosystems can be installed. This part is very nuanced and will be expanded upon in later section.

Users (currently) must execute the follow before supplying the ecosystem arguments.

```bash
./sys --init
```

### install_ecosystems()

This function is responsible for locating and ultimately a specific package within an ecosystem. It requires the ecosystem's key and the package name to match script paths as well as pass this information to the executing script function `exec_script()`.

The major focus of this function is to filter the selected scripts that are included in the `requirements.txt` and pass those scripts to the following functions.


### install_ecosystem_package()

The function requires the ecosystem's key and the package name. It pattern matches the package names with their prefixed, numeric name (ie.: `005_Gradle.sh` or `012_Clion.sh`), allowing the finalized package script reference to be send for installation.


### exec_script()

Generic function that executes scripts using bash with a timeout of 30 seconds, capturing both stdout and stderr in the output variable. All output is appended to the log file /var/log/progsys.log.

In the case where the script times or fails with a non-zero status code, it echoes an error message (is logged) and continues processing.

## Part 2: OS Implementation

In order to provide great development environment, we must configure the operating system by installing general dependencies and tools. This includes installation "default" packages such as VSCode, Python, NodeJS, Docker and Snap. The script also ensures the availability of necessary dependencies and writes to a log file.

Each OS is expected to implement a file called `_init_.sh` in its `#Core` dir as well as a series of basic packages. Using the Fedora implementation as an example, we will explore the main sections of this code

Note: if there is an issue with execution, the script creates a log file at `/var/log/progsys.log` and sets its permissions to allow write access. This log file is used to capture output and potential errors during the overall execution of the script.

### User Information
The script starts by obtaining the username using the `whoami` command and assigns it to the variable user.

### Package Updates
The script updates with `dnf` to ensure that the package information is up-to-date.

# General dependencies
Essential dependencies required for basic operations on the OS are installed such as `curl`, `ca-certificates`, `@development-tools`, `zip`, `git`, and many more 

### Default Opinionated Dependencies

Each OS implementation relies on a certain common tooling to thrive. All OS implementations must implement the following in `_init_.sh`:

**Python**: Python is well-used language and many scripts (for many Oses) depend on it existing, along with the common development headers, environments, and packaging capabilities.

**Visual Studio Code**: If Visual Studio Code (VSCode) is not already installed (checked with command -v code), the script adds Microsoft's GPG key, sets up the VSCode repository, and installs the application. _This step ensures that VSCode is available as the base editor for ecosystems with many extensions_.

**NodeJS**: If Node.js is not already installed (checked with command -v node), the script uses curl to download and execute the setup script. It then installs Node.js and configures the NPM environment variables in the user's .bashrc file.

**Docker**: Docker is not already installed (checked with command -v docker), the script downloads and executes the Docker installation script from get.docker.com. It also starts and enables the Docker service using systemctl.

**Snap**: Snap is need for a variety of packages. It also must be installed.

### OS Core Package & Execution

As discussed in the section that refers **install_core_software** above. Once the `_init_.sh` script completes processing by running:

```bash
./sys --init
```

...the main script will then install all packages that neighbor the OS `_init_.sh` script. It's best to look at the other OSes to see an example of how these scripts look. They are installed automatically using the same scripting mechanism found in `.sys` that is used for the software ecosystems. These packages, which are *very* common, that are considered to be more "general" and the user shouldn't have to bother selected them. Examples of such "auto-included" packages:

- Terminator
- Screen
- ripgrep
- jq 
- Amix Vim
- Emacs Prelude
- VSCode Intellicode
- htop
- ...and so on

Once this process is complete, the user can now run system with their selected ecosystems (including any edits to requirements.txt) via:

```bash
./sys --cloud --web_tools --python --javascript_node --more_and_more_ecosystems_here
```
