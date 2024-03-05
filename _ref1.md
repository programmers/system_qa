<p align="center">
  <img src="https://raw.githubusercontent.com/programmers/system_qa/main/logo.png" alt="Logo">
</p>

[Build Status Badge] [Version #]

## Overview

Setting up a development machine is a tedious and error prone task, often involving frustration and brittle copy/pasting.

Programmer's System eliminates these issues by providing a light weight, configurable, automated solution that includes carefully selected industry standard software/packages. 

Given the meticliously organized installation script structure, straight forward CLI, and consistent conventions, one can easily contribute to this ambitious community project.

_All installable software and packages can be reviewed [here]_.

## Support

**Platforms**
- Ubuntu 22.04
- Linux Mint Cinnamon X.X
- Fedora 36
- MacOS 12 (under dev)

**Ecosystems**
- General
- Python
- JavaScript & Node
- Web
- Containers & VMs
- Database Clients
- Version Control
- Cloud
- Java
- C & C++
- Go
- PHP
- Ruby
- Rust

## Usage

**Install**

```bash
git clone https://github.com/programmers/system.git ~/.progsys
echo "source ~/.progsys/src/init.sh" >> ~/.bashrc
source ~/.bashrc
```

**Specific Ecosystems**
```bash
progsys --os ubuntu --database --python --go
```

**All Ecosystems**

```bash
progsys --os ubuntu --c_and_cpp --cloud --containers_vms --database \
        --go --java --javascript_and_node --php --python --ruby --rust \
        --version_control --web

# (or) progsys --os ubuntu --all_ecosystems
```

**JSON Configured**

Users can also run the program by editing the underlying JSON config file. The call will look like this: 

```bash
progsys --os ubuntu --use_config
```

Please review (this guide) to learn how to easily adjust the JSON.

## Practices

**Software Selection:** Pull requests involve a close inspection the proposed software for 1) utility (popularity helps) 2) fair free/non-free licenses and 3) potential security risks.

**Editors:** While specific IDEs are included, VSCode is the "default" editor and has many relevant extensions installed in most ecosystems. For the purpose of practicalilty, note that Vim is installed as SpaceVim and Emacs as Doom.

**Local First:** Our community is not responsible for setting up keys (i.e.: SSH key for git), database connections, web servers, or any type of accounts.


## Developer Documentation

The codebase has a very low learning curve. Familiariy with Bash will make it effortless. ajeejife peej ajfei dsf jasdfjaksdfj ewe fjea fe afe a fea ef a ef efa e feafeafe aef joiajie na fnzeiuf iez ngingz uieniouz ngzeg


**Dev Guides**

1. Code Overview ()
2. Scripting Guide () 
3. Testing()


**Contributing**

Please consider contributing to this excited and useful project!

Major TODOs:

1. Error logging()
2. Scientific Computing()
3. Mobile Development()
4. C# .NET()
5. More web dev()


## License

[MIT](https://github.com/programmers/system_qa/blob/main/LICENSE)


================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================
================================================================================================

_note: unofficial repo for experimentation and QA!_

<p align="center">
  <img src="https://raw.githubusercontent.com/programmers/system_qa/main/img/logo.jpg" alt="logo">
</p>

## About

Setting up a dev machine is a tedious and time-consuming task, often involving frustration, the use of brittle scripts, and uncertain copy/pasting. Programmer's System eliminates these issues by providing a fully automated, idempotent solution that includes carefully selected industry standard software/packages, so that developers can spend more time writing code and less time setting up their machines.

Programmer's System equips your computer with the finest software, tools, and packages. The CLI allows developers to effortlessly specify their programming system needs. Under the hood, Ansible, the open-source platform, provisions the Linux or MacOS target using popular packaging modules and a custom script module.

**Supported Systems:**
- ubuntu
- xubuntu
- mint-mate
- mint-xfce
- mint-cinnamon

**Systems In Development:**
- fedora
- macos

### Ecosystems

The CLI makes it easy to install the various programming "ecosystems". The current offerings include "General", Python, JavaScript and Node, Web, Version Control, Database Clients, Containers and VMs, Cloud, Java, C/C++, Go, PHP, and Rust. Scientific Computing and Mobile ecosystems are also on the horizon.

For a better understanding of what can be installed on your computer, it is recommended to take a look at the helpful [Resources Document](https://github.com/programmers/system_qa/blob/main/docs/Software/Software%20Docs.md). It contains detailed information about the various ecosystems and programs available.

### Implementation

_(For comprehensive documentation, the development guide can be found <a href="">here</a>)_

This lightweight solution leverages clean interfaces, reusability, and the battle-tested Ansible engine.

**Ansible**: acts as the mission critical tool for server provisioning, configuration management, and deployments. However, Programmer's System uses a small a portion of its feature set to target local development machines. This means there is a reasonably low learning curve.

**Playbooks**: this text references "ecosystems" quite a lot, but it's just an clean alias for Ansible "Playbooks". These yaml files encompass the instructions for installing and configuring software. For instance, the Python playbook includes everything from Poetry to Flake8 to Pycharm.

**CLI** offers a "tagged" checkbox system for users to install selected packages for their selected ecosystems. The Python Playbook example above, "Black" may be selected over Flake8 above. "Pipenv" may replace Poetry (or neither are included). Imagine the various paths that can be ran for playbooks such as Database Clients, JavaScript and Node, and C/C++.

**Tasks**: a collection of small, discrete units that carry out the installation specifications. Each task is designed to perform a specific function and are conditionally executed (via "tags" from the CLI) to ensure a successful install.

**Modules**: module Referenced in each task. For example, in the `Database Clients.yml` playbook, we see that "mycli" uses the `pip` module, "Redis Commander" uses the `npm` module, and "sqlitebrowser" uses the `apt` module for. There are many built in modules such as `apt`, `brew`, `yum`, `snap`, `npm`, `gem`, etc. Repository and key modules as well a custom script module are also present.

Modules are referenced in each task. For example, in the Database Clients.yml playbook, we see that "mycli" uses the pip module, "Redis Commander" uses the npm module, and "sqlitebrowser" uses the apt module. There is a wide range of built-in modules, such as apt, brew, yum, snap, npm, gem and ones that support repositories, key modules, as well as a custom script module.

**Idempotency**: The solution has the ability to "know" if a software/package is installed or not. This knowledge is acquired through numerous methods, such as checking paths and bin directories when tasks are run as well as built in functionality.

**Editors**: VSCode is the "default" editor and has many relevant extensions installed in each ecosystem. A large amount of editors/IDEs are selectable as well. Vim/Emacs distribution/configurations are recommended [here](https://github.com/programmers/system_qa/blob/main/docs/Post%20Install/Overview.md#4-consider-setting-up-vim-or-emacs).

## Running

[![programerssystemvid](https://raw.githubusercontent.com/programmers/system_qa/main/img/youtube/thumbnail.png)](https://www.youtube.com/watch?v=fZ_3YuxSKpk)

```
# install git https://git-scm.com/downloads
git clone https://github.com/programmers/system_qa.git ~/.progsys
cd ~/progsys setup mint-mate
```

## Project TODOs

**OS**: Support macOS 12 Monterey[*](https://github.com/programmers/system_qa/issues/21), and Fedora 36[*](https://github.com/programmers/system_qa/issues/20)

**Ansible**:
Standard project structure[*](https://github.com/programmers/system_qa/issues/19), better logging[*](https://github.com/programmers/system_qa/issues/18), Support ZSH/Oh-My-ZSH[*](https://github.com/programmers/system_qa/issues/4)

**Base Install**:
Loading indicator[*](https://github.com/programmers/system_qa/issues/17), new lock file approach[*](https://github.com/programmers/system_qa/issues/16), redo var.yml approach[*](https://github.com/programmers/system_qa/issues/15)

**CLI**: More relevant ecosystem questions[*](https://github.com/programmers/system_qa/issues/14), more Writer docs[*](https://github.com/programmers/system_qa/issues/13), address TODOs in prompt.py[*](https://github.com/programmers/system_qa/issues/12)

**Modules**: Support existing OS upgrades by updating runscript[*](https://github.com/programmers/system_qa/issues/11)

**Ecosystems** (playbooks): Add a mobile playbook[*](https://github.com/programmers/system_qa/issues/10), redo Ruby playbook[*](https://github.com/programmers/system_qa/issues/9), include C# playbook?[*](https://github.com/programmers/system_qa/issues/27)

**Docs Gen**: Refactor license link function in generate_page.py[*](https://github.com/programmers/system_qa/issues/8)

**Scripts**: Spring Tool Suite not showing in search[*](https://github.com/programmers/system_qa/issues/5), Use a local "tmp" directory for install assets[*](https://github.com/programmers/system_qa/issues/7)

<br/>

## License

[MIT](https://github.com/programmers/system_qa/blob/main/LICENSE)

#### Notes:

These are a small list of post install tasks that couldn't be performed (more to come):

- Generating SSH keys
- Establishing git/hg/svn config
- Installing ZSH/Oh My ZSH (**Massive project TODO**)


===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================

_note: unofficial repo for experimentation and QA!_

<p align="center">
  <img src="https://raw.githubusercontent.com/programmers/system_qa/main/img/logo.jpg" alt="logo">
</p>

## About

Setting up a dev machine is a tedious and time-consuming task, often involving frustration, the use of brittle scripts, and uncertain copy/pasting. Programmer's System eliminates these issues by providing a fully automated, idempotent solution that includes carefully selected industry standard software/packages, so that developers can spend more time writing code and less time setting up their machines.

Programmer's System equips your computer with the finest software, tools, and packages. The CLI allows developers to effortlessly specify their programming system needs. Under the hood, Ansible, the open-source platform, provisions the Linux or MacOS target using popular packaging modules and a custom script module.

**Supported Systems:**
- ubuntu
- xubuntu
- mint-mate
- mint-xfce
- mint-cinnamon

**Systems In Development:**
- fedora
- macos

### Ecosystems

The CLI makes it easy to install the various programming "ecosystems". The current offerings include "General", Python, JavaScript and Node, Web, Version Control, Database Clients, Containers and VMs, Cloud, Java, C/C++, Go, PHP, and Rust. Scientific Computing and Mobile ecosystems are also on the horizon.

For a better understanding of what can be installed on your computer, it is recommended to take a look at the helpful [Resources Document](https://github.com/programmers/system_qa/blob/main/docs/Software/Software%20Docs.md). It contains detailed information about the various ecosystems and programs available.

### Implementation

_(For comprehensive documentation, the development guide can be found <a href="">here</a>)_

This lightweight solution leverages clean interfaces, reusability, and the battle-tested Ansible engine.

**Ansible**: acts as the mission critical tool for server provisioning, configuration management, and deployments. However, Programmer's System uses a small a portion of its feature set to target local development machines. This means there is a reasonably low learning curve.

**Playbooks**: this text references "ecosystems" quite a lot, but it's just an clean alias for Ansible "Playbooks". These yaml files encompass the instructions for installing and configuring software. For instance, the Python playbook includes everything from Poetry to Flake8 to Pycharm.

**CLI** offers a "tagged" checkbox system for users to install selected packages for their selected ecosystems. The Python Playbook example above, "Black" may be selected over Flake8 above. "Pipenv" may replace Poetry (or neither are included). Imagine the various paths that can be ran for playbooks such as Database Clients, JavaScript and Node, and C/C++.

**Tasks**: a collection of small, discrete units that carry out the installation specifications. Each task is designed to perform a specific function and are conditionally executed (via "tags" from the CLI) to ensure a successful install.

**Modules**: module Referenced in each task. For example, in the `Database Clients.yml` playbook, we see that "mycli" uses the `pip` module, "Redis Commander" uses the `npm` module, and "sqlitebrowser" uses the `apt` module for. There are many built in modules such as `apt`, `brew`, `yum`, `snap`, `npm`, `gem`, etc. Repository and key modules as well a custom script module are also present.

Modules are referenced in each task. For example, in the Database Clients.yml playbook, we see that "mycli" uses the pip module, "Redis Commander" uses the npm module, and "sqlitebrowser" uses the apt module. There is a wide range of built-in modules, such as apt, brew, yum, snap, npm, gem and ones that support repositories, key modules, as well as a custom script module.

**Idempotency**: The solution has the ability to "know" if a software/package is installed or not. This knowledge is acquired through numerous methods, such as checking paths and bin directories when tasks are run as well as built in functionality.

**Editors**: VSCode is the "default" editor and has many relevant extensions installed in each ecosystem. A large amount of editors/IDEs are selectable as well. Vim/Emacs distribution/configurations are recommended [here](https://github.com/programmers/system_qa/blob/main/docs/Post%20Install/Overview.md#4-consider-setting-up-vim-or-emacs).

## Running

[![programerssystemvid](https://raw.githubusercontent.com/programmers/system_qa/main/img/youtube/thumbnail.png)](https://www.youtube.com/watch?v=fZ_3YuxSKpk)

```
# install git https://git-scm.com/downloads
git clone https://github.com/programmers/system_qa.git ~/.progsys
cd ~/progsys setup mint-mate
```

## Project TODOs

**OS**: Support macOS 12 Monterey[*](https://github.com/programmers/system_qa/issues/21), and Fedora 36[*](https://github.com/programmers/system_qa/issues/20)

**Ansible**:
Standard project structure[*](https://github.com/programmers/system_qa/issues/19), better logging[*](https://github.com/programmers/system_qa/issues/18), Support ZSH/Oh-My-ZSH[*](https://github.com/programmers/system_qa/issues/4)

**Base Install**:
Loading indicator[*](https://github.com/programmers/system_qa/issues/17), new lock file approach[*](https://github.com/programmers/system_qa/issues/16), redo var.yml approach[*](https://github.com/programmers/system_qa/issues/15)

**CLI**: More relevant ecosystem questions[*](https://github.com/programmers/system_qa/issues/14), more Writer docs[*](https://github.com/programmers/system_qa/issues/13), address TODOs in prompt.py[*](https://github.com/programmers/system_qa/issues/12)

**Modules**: Support existing OS upgrades by updating runscript[*](https://github.com/programmers/system_qa/issues/11)

**Ecosystems** (playbooks): Add a mobile playbook[*](https://github.com/programmers/system_qa/issues/10), redo Ruby playbook[*](https://github.com/programmers/system_qa/issues/9), include C# playbook?[*](https://github.com/programmers/system_qa/issues/27)

**Docs Gen**: Refactor license link function in generate_page.py[*](https://github.com/programmers/system_qa/issues/8)

**Scripts**: Spring Tool Suite not showing in search[*](https://github.com/programmers/system_qa/issues/5), Use a local "tmp" directory for install assets[*](https://github.com/programmers/system_qa/issues/7)

<br/>

## License

[MIT](https://github.com/programmers/system_qa/blob/main/LICENSE)

#### Notes:

These are a small list of post install tasks that couldn't be performed (more to come):

- Generating SSH keys
- Establishing git/hg/svn config
- Installing ZSH/Oh My ZSH (**Massive project TODO**)


===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================
===========================================================================================================


_note: unofficial repo for experimentation and QA!_

<p align="center">
  <img src="https://raw.githubusercontent.com/programmers/system_qa/main/img/logo/logo.png" alt="Logo">

</p>

## About

Programmer's System equips your development machine with the finest software ecosystems. The CLI allows one to specify their needs and Ansible reliably installs everything using familiar packaging modules such as `apt`, `brew`, `yum`, `snap`, `npm`, `script`, and many more.

This project is in **alpha** and currently supports fresh installs of Ubuntu 22.04 LTS... project TODO resolutions, Fedora 36, and macOS 12 Monterey are on the way! 

## Overview

`This is an ambitious project looking to make a difference for us devs. Please consider contributing!`

**Ecosystems**: General, Python, JavaScript and Node, Web Tools, Version Control, Database Clients, Containers and VMs, Scientific, Cloud Tools, Java, C and Cpp, Go, PHP, Rust, Ruby.

**(**_Review the [Master Software Document](https://github.com/programmers/system_qa/blob/main/docs/Software/Software%20Docs.md) to see all software descriptions, how-to guides, and licenses for the ecosystems._**)**

**Software**: All (mostly open source) software and tools are carefully selected based on industry standards with security in mind.

**Platforms**: Only \*nix operating systems are supported. All systems should be the latest (stable) os version. For instance, the newest Ubuntu LTS version and major macOS release.

**Ansible**: Mission critical tool for server provisioning, configuration management, and deployments. This project uses a small a portion of its features to target _local_ machines for provisioning. This translates to a small learning curve.

**Restrictions**: No backends (DB engines, web servers, etc), only clients (DBeaver, Azure CLI, etc). Snaps/Flatpaks Ansible modules are allowed, but use them as a last resort due to performance.

**Editors**: VSCode is the "default" editor and has many relevant extensions installed in each ecosystem. A large amount of editors/IDEs are selectable as well. Vim/Emacs distribution/configurations are recommended [here](https://github.com/programmers/system_qa/blob/main/docs/Post%20Install/Overview.md#4-consider-setting-up-vim-or-emacs).

## Running

_(middle-click for new tab)_

[![programerssystemvid](https://raw.githubusercontent.com/programmers/system_qa/main/img/youtube/thumbnail.png)](https://www.youtube.com/watch?v=fZ_3YuxSKpk)

For Ubuntu, you may wish extend the sudoers timeout for bigger installs (many ecosystems). [Video Instructions](https://www.youtube.com/watch?v=EvZ4gu-C5gM).

```
# Git pull the project to ~/.progsys
sudo apt install git -y && git clone https://github.com/programmers/system_qa.git ~/.progsys

# Install the base dependencies, launch the CLI, and then installs everything
cd ~/.progsys && sudo ./run ubuntu

# When finished, a "Post Install" page link will appear to provide helpful considerations
# such as setting up keys, improving your shell, vim/emacs distros, and general configurations.
```

## Dev Guide

1. **[Ansible Usage](https://github.com/programmers/system_qa/blob/main/docs/Dev%20Guide/1.%20Ansible%20Usage.md)**
2. **[Install & Run](https://github.com/programmers/system_qa/blob/main/docs/Dev%20Guide/2.%20Install%20%26%20Run.md)**
3. **[Contributing](https://github.com/programmers/system_qa/blob/main/docs/Dev%20Guide/3.%20Contributing.md)**

<br />

## Project TODOs

**OS**: Support macOS 12 Monterey[*](https://github.com/programmers/system_qa/issues/21), and Fedora 36[*](https://github.com/programmers/system_qa/issues/20)

**Ansible**:
Standard project structure[*](https://github.com/programmers/system_qa/issues/19), better logging[*](https://github.com/programmers/system_qa/issues/18), Support ZSH/Oh-My-ZSH[*](https://github.com/programmers/system_qa/issues/4)

**Base Install**:
Loading indicator[*](https://github.com/programmers/system_qa/issues/17), new lock file approach[*](https://github.com/programmers/system_qa/issues/16), redo var.yml approach[*](https://github.com/programmers/system_qa/issues/15)

**CLI**: More relevant ecosystem questions[*](https://github.com/programmers/system_qa/issues/14), more Writer docs[*](https://github.com/programmers/system_qa/issues/13), address TODOs in prompt.py[*](https://github.com/programmers/system_qa/issues/12)

**Modules**: Support existing OS upgrades by updating runscript[*](https://github.com/programmers/system_qa/issues/11)

**Ecosystems** (playbooks): Add a mobile playbook[*](https://github.com/programmers/system_qa/issues/10), redo Ruby playbook[*](https://github.com/programmers/system_qa/issues/9), include C# playbook?[*](https://github.com/programmers/system_qa/issues/27)

**Docs Gen**: Refactor license link function in generate_page.py[*](https://github.com/programmers/system_qa/issues/8)

**Scripts**: Spring Tool Suite not showing in search[*](https://github.com/programmers/system_qa/issues/5), Use a local "tmp" directory for install assets[*](https://github.com/programmers/system_qa/issues/7)

<br/>

## License

[MIT](https://github.com/programmers/system_qa/blob/main/LICENSE)



=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
=======================================================================================================
# OFFICIAL TRACKER

NOTES: I may not need check for apt-get, snap, pip, etc

### check

- Add in all scripts!
- This reads in the JSON using filepath
- Make ubuntu.sh have everything (stuff will be filtered)
- Keep code running

### CLI

- ecosystems.json
- I like have `curl -x url/system/ubuntu/setup.sh`
- Allow having defaults / exclusions
- This is what the user will be editing at first

### Unlock/Force

- Be careful that it doesn’t turn into superuser

### Setup.sh & Install.sh

- Setup.sh is the base stuff, and install is the run

## *Backlog Tasks*

- See how this would look with mint.sh
- fd-find isn’t installing
- replace wgets with curl
- CI


============================================================================================================

# Dev-Guide.md

# Programmer's System - Development Guide

 

## Welcome

Welcome to the development guide! This document is designed to provide a comprehensive overview of the technical details of the system, in a format that can be referred back to as needed. The use of clear language, terminology breakdowns, and code samples ensures that the learning curve is not too steep for new contributors.

### Design Goal

To maintain a lightweight solution that leverages a small Python codebase, clear interfaces, reusability, extensibility, selective operating system support, idempotency, and the battle-tested Ansible provisioning system. Safety is a major component established through careful review of software and package sources as well as code patches.

The combination of these focuses makes for the perfect choice for robustly provisioning a local development machine, enabling users to maximize their productivity and developer experience by customizing their fresh machine to meet their exact needs and requirements.

### Current Ecosystems Support

- “General”
- Python
- JavaScript & Node
- Web
- Version Control
- Database Clients
- Containers & VMs
- Cloud
- Java
- C/C++
- Go
- PHP
- Rust

### Current OS Support

- Ubuntu
- XUbuntu
- Mint Mate
- Mint Xfce
- Mint Cinnamon
- ~~*Fedora*~~
- ~~*Macos*~~

### Ansible

Ansible is widely regarded as one of the most reliable and mission-critical tools for all matters concerning cloud or on-prem systems infrastructure. It is regularly employed for server provisioning, configuration management, and orchestration.

Outside of those contexts, it can also be used to provision local machines using a small subset of its features. This includes the targeting of various Linux distributions and MacOS releases using popular, built-in packaging modules and a custom script module.

### Playbooks

Called "Ecosystems" in the README/CLI, Ansible Playbook files use YAML and Jinja 2 markup to provide a comprehensive set of instructions for the installation and configuration of software and packages. The abridged code below illustrates the overall structure of a playbook, with the inclusion of helpful comments to make the code and syntax easier to understand. “Playbook” will be used instead of “Ecosystem” from this point on.

In the most fundamental sense, a playbook contains a list of “tasks” that contain “modules”. This allows the author to configure the parameters needed to define how the overview playbook should run. The modules used in this project include `apt`, `yum`/`dnf`, `snap`, `npm`, `brew`, `gem`, a custom runner, and many more.

Below is the full, annotated Ubuntu/Mint "Database Clients.yml" playbook. The tasks, modules, and general “anatomy” of the playbook are detailed with comments throughout.

```yaml
---
# The top-level playbook data
- name: Database Clients
  hosts: localhost # always local
  
  # Deals with privileges (more on this later)
  become: true

  # List of small units that encompass modules. Takes in many parameters.
  # We're using apt_repository, apt, runscript, snap, pip, and npm
  tasks:
      # DBeaver isn't included in Ubuntu sources so this will add the
      # official repository using the apt_repository module
    - name: DBeaver Repository
      apt_repository: repo=ppa:serge-rider/dbeaver-ce
      tags:
        - default # will always run
      
      # DBeaver's repository has been added, install it with apt module
    - name: DBeaver Community
      apt: name=dbeaver-ce # notice the simple parameter syntax
      tags:
        - default

      # The following "runscript" module will be discussed later. For now, notice
      # how program "Usql" targets a custom script "usql.sh" for install and 
      # specifies "/usr/bin/usql" as the install location. Given a successful run,
      # this task will be skipped, given that the path/binary are present.
    - name: Usql
      runscript:
        script: usql.sh
        creates: /usr/bin/usql
      tags:
        - default

      # Using the snap module is preferred, given a lack of repos or if it's 
      # the official option
    - name: Datagrip Trial
      snap: name=datagrip classic=yes
      tags:
        - datagrip_trial # runs based on CLI selections

			# The Workbench snap is the most reliable option at this time
    - name: MySQL Workbench Community
      snap: name=mysql-workbench-community classic=yes
      tags:
        - mysql

      # Task that uses the pip module to install the handy mycli tool.
    - name: mycli
      pip: name=mycli
      tags:
        - mysql # runs based on CLI selections (all tags below are like this!)

    - # Similar to the "DBeaver Repository" task, but for a key
      name: pgAdmin 4 Desktop Key
      apt_key: url=https://www.pgadmin.org/static/packages_pgadmin_org.pub
      tags:
        - postgres

      # Similar to the "DBeaver Repository" task
    - name: pgAdmin 4 Desktop Repository
      apt_repository:
        repo: deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/jammy pgadmin4 main
      tags:
        - postgres

      # We now can install pgAdmin. Notice how a linked package is specified
    - name: pgAdmin 4 Desktop
      apt: 
        pkg:
          - libpq5
          - pgadmin4-desktop
      tags:
        - postgres
      
      # Typical apt install
    - name: pgcli
      apt: name=pgcli
      tags:
        - postgres

      # Similar to prior examples, we must add a repo to install SQLite Browser
    - name: SQLite Browser Repo
      apt_repository: repo=ppa:linuxgndu/sqlitebrowser
      tags:
        - sqlite
  
      # can now instal
    - name: SQLite Browser
      apt: name=sqlitebrowser
      tags:
        - sqlite

      # The npm module is used for global installs of GUIs and CLIs
    - name: Redis Commander
      npm: name=redis-commander global=yes
      tags:
        - redis

      # Modules are to very versatile. For instance, apt understands how to resolve
      # installing from remote deb files
    - name: MongoDB Compass
      apt: deb=https://downloads.mongodb.com/compass/mongodb-compass_1.30.1_amd64.deb
      tags:
        - mongodb
```

### Layout & Context

Before delving deeper into the documentation, the code base structure should be presented and explained for better context.

 

```
~/.progsys
│
│   # Versioned documentation
├── docs
│   ├── Dev-Guide.md # you are here 
│   └── Catalog.md ???
│
│   # Versioned visual assets
├── img
│   ├── demo.gif
│   └── logo.jpg
│
├── LICENSE
│
│   # This is the entry point script that performs validation, installs the
│   # operating's systems base/essential dependencies, presents the CLI and
│   # runs the generated the constructed Ansible command.
├── progsys 
│
├── README.md
│
└── src
    │   # Our all-local solution differs greatly from traditional Ansible
    │   # project use cases, so the layout is simple.
    ├── ansible
    │
    │   # The The ansible.cfg config file in the project codebase controls
    │   # Ansible behavior. Sections contain name/value pairs for options,
    │   # such as forks, playbook dir, log verbosity, network settings, and
    │   # retry specs.
    │   ├── ansible.cfg
    │   │  
    |   |  # Ansible provides developers with an easy-to-use Python API,
    |   |  # which allows them to extend its many components, resulting in 
    |   |  # more capabilities in their playbooks and elsewhere. These custom 
    |   |  # modules will be discussed in detail later in the text.
    │   ├── modules
    │   │   ├── runscript.py
    │   │   └── vscodeextension.py
    │   │     
    │   │   # Each OS gets their playbook directory. Review the "Playbooks"
    │   │   # section above for more on playbooks.
    │   ├── playbooks
    │   │   │ 
    │   │   │   # If there is a devired system such as a Linux Mint release, it
    │   │   │   # will uses its "parent" directory (Ubuntu, in this example).
    │   │   └── ubuntu
    │   │   │   ├── C and Cpp.yml
    │   │   │   ├── Cloud.yml
    │   │   │   ├── Containers and VMs.yml
    │   │   │   ├── Database Clients.yml
    │   │   │   ├── ...
    │   │   │   ├── ...
    │   │   │   └── ...
    │   │   └── fedora    
    │   │   │    ├── ...
    │   │   │    ├── ...    
    │   │   │    └── ...
    │   │   └── macos    
    │   │        ├── ...
    │   │        ├── ...    
    │   │        └── ...
    │   │
    │   │   # This is a generated script that targets run_playbooks.yml
    │   │   # (the selected playbooks for execution) and the tags. 
    │   ├── run.sh
    │   │
    │   ├── scripts
    │   │   │
    │   │   │   # These are scripts that are OS agnostic (but still Nix, of course)
    │   │   └── shared
    │   │   │   ├── composer.sh
    │   │   │   ├── gvm.sh
    │   │   │   ├── poetry.sh
    │   │   │   ├── ...    
    │   │   │   ├── ...
    │   │   │   └── ...
    │   │   │
    │   │   │   # Similar to the "playbooks" directory style, each OS gets their
    │   │   │   # own scripts area. If there's a devired system such as a Linux
    │   │   │   # Mint release, will uses its "parent" directory (Ubuntu, in this
    │   │   │   # example).
    │   │   └── ubuntu
    │   │   │    ├── aws_cli.sh
    │   │   │    ├── azure_cli.sh
    │   │   │    ├── clang_llvm.sh
    │   │   │    ├── docker_compose.sh
    │   │   │    ├── eclipse_cpp.sh
    │   │   │    ├── ...    
    │   │   │    └── ...
    │   │   └── fedora    
    │   │   │    ├── ...
    │   │   │    ├── ...    
    │   │   │    └── ...
    │   │   └── macos    
    │   │        ├── ...
    │   │        ├── ...    
    │   │        └── ...
    │   │
    │   │   # This holds metadata on the OS, home user, and more. These values
    │   │   # are primarily used in the custom modules.
    │   └── vars.yml
    
prompt: shows usage instructions and asks the user which "ecosystems" 
(playbooks) they need. From there, questions are filtered to include 
only the selected playbooks which user inputted values in mind.

# Consists of the of Python code responsiable for prompting the user
their ecosystems and additional questions

    ├── cli
    │   ├── prompt.py
    │   ├── questions.py
    │   └── theme.py
    ├── main.py
    └── setup
        ├── assets.py
        ├── fedora.sh
        ├── macos.sh
        └── ubuntu.sh
```

## Scripting & runscript Module

It is best to use Bash scripts to install programs and packages in certain cases, such as those without valid packages/repositories or those that can be only install using scripts. This is where the `runscript` module comes in.

****Scripts Locations****

- `src/ansible/scripts/(OS)/` hold scripts in OS-specific directories. Similar to the "playbooks" directory, derived system are also resolved. For instance, Mint Mate, Mint Cinnamon, and so on will share the same Ubuntu playbooks/scripts.
- `src/ansible/scripts/shared/`hold scripts that will work on any OS.

********************Parameters********************

**creates**: The location of a binary or directory that only an installed program would create can be determined by a comprehensive search. The module "knows" if a software/package is installed or not, ensuring idempotency on playbook reruns.

- Formats:
    1. Full file path to the binary can be specified like so:  `/usr/local/bin/composer` 
    2. Home user paths can take on this form:  `.phpenv` , which is shorthand for `/home/someone/.phpenv`.
- **script**: Similar to how `creates` works, the execution of the script will run based on if it is a full  file path to the binary or a home user path such as `.something`  (shorthand). Here are  examples from the `PHP` playbook that illustrate

- **shared**:

```yaml
     # Looks in the src/ansible/scripts/shared directory for the 
     # script and runs. It works for all OSes.
    - name: Composer
      runscript:
        script: composer.sh
        shared: true # will target ansible/scripts/shared/composer.sh
        creates: /usr/local/bin/composer
      tags:
        - default
```

- **non-shared:**

```yaml
# Looks in the specific OS directory for the "local" script and runs
- name: Phpenv
      runscript:
        script: phpenv.sh
        creates: .phpenv
      tags:
        - default
```

****Running as Root vs Home User****

If the `creates` key contains a full path to the binary, such as `/usr/bin/eclipse`, it will require root privileges (passed from Ansible) and use those rights for system-wide operation. If a `.` is present, the script will execute as the home user.  Short Java playbook examples:

```jsx
# Installs Eclipse as root user, given the filepath to the binary
- name: Eclipse
      runscript:
        script: eclipse_java.sh
        creates: /usr/bin/eclipse
      tags:
        - eclipse_java

# Installs the Version Manager to the home user dir as the home user.
- name: Jabba (Java) Version Manager
      runscript:
        script: jabba.sh
        creates: .jabba
      tags:
        - default
```

****Writing Scripts****

**Considerations**

Writing scripts for `runscript` are straight forward. Keep these in mind:

- Be mindful of where you place your scripts:
    - `src/ansible/scripts/(OS)/` OS-specific.
    - `src/ansible/scripts/shared/`OS-agnostic
- Opt for using `/usr/local/bin` for installs, when appropriate
- Avoid making changes to the desktop environment
- Know how to use cURL and piping effectively (many examples in the codebase)
- use `TRAP … EXIT` if there is a chance that there will be left over artifacts
- If a sub shell must be launched, enter in an issue for discussion
- be mindful of how your script will run with future OS releases
- use_underscores_in_name.sh

******************************Script Showcase******************************

The following examples show the variety of scripts used in the project. 

**Java: Gradle** (good example of a trap)

```bash
#- name: Gradle
#      runscript:
#        script: gradle.sh
#        creates: /usr/local/bin/gradle
#      tags:
#        - gradle

#!/bin/bash
trap "rm gradle.zip" EXIT

curl -sL https://services.gradle.org/distributions/gradle-7.2-bin.zip -o gradle.zip
unzip gradle.zip -d /usr/local/bin/gradle
```

**Python: Poetry** (shared one-liner that uses Python for execution)

```bash
#- name: Poetry
#      runscript:
#        script: poetry.sh
#        creates: .poetry/bin/poetry
#        shared: true
#      tags:
#        - poetry

#!/bin/bash

curl -sL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
```

**C/C++ Eclipse C++** (somewhat involved - creates a desktop entry)

```bash
# - name: Eclipse C++
#      runscript:
#        script: eclipse_cpp.sh
#        creates: /usr/bin/eclipse-cpp
#      tags:
#        - eclipse_cpp

#!/bin/bash

trap "rm -rf eclipse" EXIT

curl -sL https://download.eclipse.org/technology/epp/downloads/release/2022-09/M2/eclipse-cpp-2022-09-M2-linux-gtk-x86_64.tar.gz | tar -zx

mv eclipse /usr/bin/eclipse-cpp

cat << 'EOF' >> /usr/share/applications/eclipse-cpp.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse C++
Comment=Eclipse for C++ developers
Exec=/usr/bin/eclipse-cpp/eclipse
Terminal=false
Type=Application
Categories=Utility;Development;
EOF
```

## Main Function

When running Programmer’s System, one must call the `./progsys` entry-point script to begin the install process. If all installation steps are satisfied, the prompt CLI will be presented.

The `main` function is composed of specific functions to carry out the process. It is organized in a faux try/catch block as seen below.

```bash
# main function
{
	verify_command &&
	verify_operating_system &&
	run_base_setup_script &&
	python src/main.py $operating_system &&
	run_ansible
} || {
    echo "Error with Ansible run..."
    exit 1
}
```

**verify_operating_system function**

This command is very important when starting execution. It is responsible for establishing which operating system to use. It also checks to see if the operating system that is passed in is a “derived” one. The code is very simple:

```bash
# 1) Check lists to set a derived OS to the parent
	if [[ ## Ubuntu ##
			"$operating_system" == "mint-mate" ||
			"$operating_system" == "mint-xfce" ||
			"$operating_system" == "mint-cinnamon" ||
			"$operating_system" == "xubuntu"
		]];
	then
	    operating_system="ubuntu"
	fi
```

We know that Linux Mint systems (and XUbuntu) are based on Ubuntu, so the variable is set to Ubuntu. This allows contributors to test and add derived systems without having to create totally different playbooks and scripts. This OS variable can be thought of as a “global” hereafter.

There is a comment underneath this code that says that one can add more systems in this manner.

**run_base_setup_script function**

Each OS has a setup script in `src/setup/(OS)`. These install the “base” system dependencies and prepares certain parameters. Once done, one can run the CLI and, in turn, Ansible.

**************Flow of the script, targeting************** `src/setup/ubuntu`:

1. Perform apt updates
2. Installs essential packages
3. Installs the latest Python (from the trusted “deadsnakes” PPA). (Note that this project mostly uses Python!)
4. Installs `snapd`, if not present
5. Installs Python Inquirer (the package behind the CLI)
6. Installs the latest Ansible from its official PPA
7. Constructs the Ansible config file `/src/ansible/ansible.cfg`
8. Registers the custom Ansible modules
9. Stores a `vars.yml` file with all needed variables for operations
10. Creates a lock file if all operations succeeded

## The CLI

********************Selections********************

`python src/main.py (OS)` is called from the Bash script to allow users to select their playbooks and answer many questions based on their needs. This is handled by Python’s `Prompt` class. Selections are presented as checkboxes.

********Tags********

Once the CLI step process is completed, the selected playbooks and selected answer "tags" are added to the Ansible command string. Put simply the “tags” are then included in Ansible’s command string as a comma separated string: `--tag=""`.

Note: Each question is stored (and mapped with tag associations) in `src/cli/questions.py` dictionary.

******************************************************Tag Representation (simple)******************************************************

Consider how tags can be represented in the Java playbook via `src/cli/questions.py` mappings:

The data:

```json
{
    "key": "java_build_tools",
    "type": "checkboxes",
    "question": "Select the Java build tools you use",
    "tags": [
        ( "Maven", "maven" ),
        ( "Gradle", "gradle" )
    ]
}
```

The relevant tasks and tags in the Java playbook:

```yaml
- name: Maven
  apt: name=maven
  tags:
    - maven
  
- name: gradle
  apt: name=gradle
  tags:
    - gradle
```

Based on what the user specified, this is what `ansible-playbook` could reference in `--tags`

- `--tags="gradle"`
- `--tags="maven"`
- `--tags="gradle,maven"`
- `--tags=""`

******************************************************Tag Representation (involved)******************************************************

The relevant tasks and tags in the Database Clients playbook:

```json
{
  "key": "database_clients",
  "type": "checkboxes",
  "question": "Select the database systems you use",
  "tags": [
      ( "MySQL", "mysql" ),
      ( "Postgres", "postgres" ),
      ( "Sqlite", "sqlite" ),
      ( "Redis", "redis" ),
      ( "MongoDB", "mongodb" )
  ]
}
```

The relevant tasks in the playbook:

```yaml

    - name: MySQL Workbench Community
      snap: name=mysql-workbench-community classic=yes
      tags:
        - mysql

    - name: mycli
      pip: name=mycli
      tags:
        - mysql

    - name: pgAdmin 4 Desktop Key
      apt_key: url=https://www.pgadmin.org/static/packages_pgadmin_org.pub
      tags:
        - postgres

    - name: pgAdmin 4 Desktop Repository
      apt_repository:
        repo: deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/jammy pgadmin4 main
      tags:
        - postgres

    - name: pgAdmin 4 Desktop
      apt: 
        pkg:
          - libpq5
          - pgadmin4-desktop
      tags:
        - postgres

    - name: pgcli
      apt: name=pgcli
      tags:
        - postgres

    - name: SQLite Browser Repo
      apt_repository: repo=ppa:linuxgndu/sqlitebrowser
      tags:
        - sqlite

    - name: SQLite Browser
      apt: name=sqlitebrowser
      tags:
        - sqlite

    - name: Redis Commander
      npm: name=redis-commander global=yes
      tags:
        - redis

    - name: MongoDB Compass
      apt: deb=https://downloads.mongodb.com/compass/mongodb-compass_1.30.1_amd64.deb
      tags:
        - mongodb
```

Conclusion: tags are of great importance. In this example, we can see how they are applied to “parent tasks” as well. Certain playbooks contain a wide range of software and packages that can be selected. As long as tags are implemented correctly, allowing for a personalized setup is met. 

## Running

The final function, `run_ansible`, that is ran in `./progsys` calls a generated script (`src/ansible/run.sh`), generated by Python with the command string. The goal is to execute this underlying `ansible-playbook` call with the attached tags and a reference to what is called the “parent playbook”.

**“Parent” Playbook**

This is a yml file that that holds the selected “child” playbooks that are to be run. An generated example would be: `src/ansible/playbooks/(OS)/run_playbooks.yml`:

```yaml
---
- import_playbook: "General.yml"
- import_playbook: "Python.yml"
- import_playbook: "Web.yml"
- import_playbook: "Version Control.yml"
...
...
...
```

****************************Command Execution****************************

Finally `src/ansible/run.sh` is called with something like this:

```bash
sudo ansible-playbook {path}/src/ansible/playbooks/ubuntu/run_playbooks.yml --tags="pipenv,pycharm,react,angular,git,subversion"
```

## VSCode - Default Editor

The `runscript` module is documented in the **Scripting** section, and there is another custom module called `vscodeextension` available (`src/ansible/modules/vscodeextension.py`). It is argued that VSCode is a reliable and powerful editor in this day and age, with extensions for most of the Playbooks. It is installed by default, but the user can choose to avoid extensions and remove the editor after the fact.

This can be seen as a practical workaround for choosing a base editor without debating if it should be Vim or Emacs. Programmer’s System wouldn’t be very useful without a well equipped editor that is related to the playbooks.

Note: Many IDEs from different companies and open-source projects are readily available for installation in the playbooks.

VSCode Extensions Usage example:

```yaml
- name: VSCode Vue
  vscodeextension: name=hollowtree.vue-snippets
  tags:
    - vue
    
- name: VSCode React
  vscodeextension: name=jawandarajbir.react-vscode-extension-pack
  tags:
    - react

- name: VSCode TypeScript
  vscodeextension: name=loiane.ts-extension-pack
  tags:
    - typescript
```

## Releases

Given that operating systems upgrade quickly (through patches or major releases), it is essential for us to employ the use of “Git Release Tags” in order to “snapshot” a given release at a specific point in time.

## Contributing (PUT IN README)

This is a new and exciting project aiming to significantly improve the developer "User Experience" unlike any other system out there. Your work will be appreciated in this young community. You can contribute by adding your favorite Linux and MacOS systems and/or improving existing playbooks and scripts. The existing code can be used as a reference to help you become productive in no time.

(Issue links to come)