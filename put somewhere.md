Programmer's System
Overview
Setting up a development machine can be a tedious and error-prone task, often leading to frustration and brittle copy/pasting. Programmer's System addresses these issues by providing a lightweight, configurable, and automated solution. It includes carefully selected industry-standard software/packages, organized installation scripts, a straightforward CLI, and consistent conventions.

All installable software and packages can be reviewed here.


Editors: VSCode is the default editor, with many relevant extensions. Other editors/IDEs are selectable, and Vim/Emacs configurations are recommended.



The dev guide can be found here: asdf
Contributing to Programmer's System is a straightforward and accessible process, thanks to its well-organized structure, clear file naming conventions, and the simplicity of being entirely written in Bash. Whether you are familiar with Linux or MacOS, each operating system can leverage a shared script with ease.

Ease of Contribution
1. Clear File Naming Conventions
All scripts and files in the project follow a consistent and intuitive naming convention. This uniformity makes it easy for contributors to locate specific components and understand their functions quickly.

2. Bash Scripting
The entire project is written in Bash, a widely used and beginner-friendly scripting language. Bash scripts are human-readable and allow contributors to make modifications with confidence, even if they are new to the project.

3. Shared Script Approach
The shared script concept ensures that common functionalities are placed in a central location, promoting code reusability and making maintenance simpler. Each operating system can call the shared script using the sys_exec command, streamlining the development process.

4. Idempotency with sys_check
To enhance idempotency, the sys_check command is utilized at the beginning of each script. For example:



Support
Platforms

Ubuntu 22.04
Linux Mint Cinnamon X.X
Fedora 36
MacOS 12 (under development)
Ecosystems

General
Python
JavaScript & Node
Web
Containers & VMs
Database Clients
Version Control
Cloud
Java
C & C++
Go
PHP
Ruby
Rust
Usage
Install

bash
Copy code
git clone https://github.com/programmers/system.git ~/.progsys
echo "source ~/.progsys/src/init.sh" >> ~/.bashrc
source ~/.bashrc
Specific Ecosystems

bash
Copy code
progsys --os ubuntu --database --python --go
All Ecosystems

bash
Copy code
progsys --os ubuntu --c_and_cpp --cloud --containers_vms --database \
        --go --java --javascript_and_node --php --python --ruby --rust \
        --version_control --web
JSON Configured

Users can also run the program by editing the underlying JSON config file. The call will look like this:

bash
Copy code
progsys --os ubuntu --use_config
Please review this guide to learn how to easily adjust the JSON.

Practices
Software Selection: Pull requests involve a close inspection of proposed software for utility, fair licenses, and potential security risks.

Editors: VSCode is the default editor with relevant extensions in most ecosystems. Vim is installed as SpaceVim, and Emacs as Doom for practicality.

Local First: The community is not responsible for setting up keys, database connections, web servers, or any type of accounts.

Developer Documentation
The codebase has a low learning curve, especially for those familiar with Bash. Explore the Dev Guides for a detailed overview.

Contributing

Consider contributing to this exciting and useful project! Major TODOs include error logging, scientific computing, mobile development, C# .NET, and more web development.

License
MIT

Logo


Idempotency: The system can determine if a software/package is already installed, ensuring reliable and consistent installations.

Editors: VSCode is the default editor, with many relevant extensions. Other editors/IDEs are selectable, and Vim/Emacs configurations are recommended.

Running
Watch the Video

bash
Copy code
# Install Git
sudo apt install git -y
git clone https://github.com/programmers/system_qa.git ~/.progsys
cd ~/.progsys
./setup mint-mate
Project TODOs
OS: Support macOS 12 Monterey and Fedora 36.
Base Install: Loading indicator, new lock file approach, redo var.yml approach.
License
MIT

Note: Unofficial repo for experimentation and QA!

Logo


Programmer's System is a versatile solution for setting up development environments, providing a hassle-free experience for developers across different operating systems. Each operating system follows a simple and flexible requirements.txt-style approach, allowing users to customize their installations easily.

Overview
The system organizes software/packages into ecosystems, and users can comment out or uncomment items within each ecosystem to tailor their setup to specific needs.

Contributing to Programmer's System is a straightforward and accessible process, thanks to its well-organized structure, clear file naming conventions, and the simplicity of being entirely written in Bash. Whether you are familiar with Linux or MacOS, each operating system can leverage a shared script with ease.

Ease of Contribution
1. Clear File Naming Conventions
All scripts and files in the project follow a consistent and intuitive naming convention. This uniformity makes it easy for contributors to locate specific components and understand their functions quickly.

2. Bash Scripting
The entire project is written in Bash, a widely used and beginner-friendly scripting language. Bash scripts are human-readable and allow contributors to make modifications with confidence, even if they are new to the project.

3. Shared Script Approach
The shared script concept ensures that common functionalities are placed in a central location, promoting code reusability and making maintenance simpler. Each operating system can call the shared script using the sys_exec command, streamlining the development process.

4. Idempotency with sys_check
To enhance idempotency, the sys_check command is utilized at the beginning of each script. For example:

bash
Copy code
sys_check /usr/bin/dbeaver && exit 0
This line checks if DBeaver is already installed, and if it is, the script exits gracefully. This practice ensures that scripts can be rerun without causing unintended changes, making it safe for users to update their setups.