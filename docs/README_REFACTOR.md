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