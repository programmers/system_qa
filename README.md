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
