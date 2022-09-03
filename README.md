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
sudo apt install git -y && git clone git@github.com:programmers/system_qa.git ~/.progsys

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
