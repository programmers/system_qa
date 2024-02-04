![logo](logo.jpg)

## Welcome

Setting up a development machine is a time-consuming and error-prone process. Programmer's System eliminates these issues by providing a light weight, automated, configurable solution to install industry standard software ecosystems in Linux/Mac enviroments.

Design Objective: The primary goal of this project is to maintain simplicity, grounded in the philosophy that it's built on a foundation of "just scripts." For a comprehensive overview, please refer to the [development guide](www.google.com). In essence, Programmer's System enables the seamless addition of Linux/Mac distributions with a focus on stability. Each distribution requires an initialization script for core packages and a package configuration file (requirements.txt format). Once configured, all scripts are neatly organized in distinct "ecosystem" folders, allowing users to customize their installation by commenting out specific packages. For example, if a user prefers Pipenv over Poetry in the "Python" ecosystem, they can easily modify their preferences, making sure to pass in `--python` when running.

Each package is encapsulated within a dedicated bash script, and a set of exposed bash functions facilitate package installation checks and the utilization of a shared script across all distributions. Explore the "ubuntu" directory for insights into the requirements.txt and "-core-" scripts, showcasing how ecosystems contain targeted and focused installation code within clearly defined folders and supporting script files. To ensure independence and code sharing, accessible bash functions are integrated into the install script. The system operates by executing scripts dedicated to installing individual packages, providing a streamlined and efficient provisioning mechanism. The code that powers the system is called sys.sh.


## Ecosystems

Utilizing the traditional *requirements.txt* configuration style, you can effortlessly define the packages to be included in your distribution's folder. Afterward, the command-line interface (CLI) is run used to do the rest:

```bash
./sys --cloud --web_tools --javascript_node --db_clients \
      --python --containers_vms --java 
```

## Getting Started

- For *users*, follow the [setup guide](https://google.com) for a swift start.
- For *developers*, review the [comprehensive documentation](https://google.com).

## Running

Currently the stable Fedora 38 and Ubuntu 22.04 LTS are the supported distributions (OSX 14 is on the way). Kick off Programmer's System like so:

```bash
git clone https://github.com/programmers/system.git && cd system
./sys --init
./sys [ecosystems here]
```

## Contributing

#### HELP WANTED. THANKS.

• **General Work**: Add configuration framework (Bash/JSON) ([233](https://google.com)), limit use of Snap ([2823](www.a.com))
<br/>
• **New Ecosystems**: Mobile ([932](https://google.com)), Scientific ([992](https://google.com)), C# ([2182](https://google.com))
<br/>
• **Packages**: Rework Kubectl [843](https://google.com), add Terraform [482](https://google.com), add Java Gradle ([9834(www.a.com)]) & STS ([123](www.google.com)), add C & C++ Conan ([23](www.google.com)), add DB client pgadmin4 desktop ([823](www.as.com)]), Go cleanup ([223](www.googl.com))
<br/>
• **OS Support**: Implement [OSX 14](google.com) and top picks from distrowatch ([548](https://google.com))
<br/>
• **Bash**: Make sys a proper binary [9823](google.com), refactor install_ecosystem func ([2398](www.google.com)), clean up exec_script file name extract ([293](https://google.com)), refactor install_ecosystems ([293](www.google.com))
<br/>
• **Hardening**: Implement CI/CD nightly builds [488](https://google.com)


## License

[MIT](https://github.com/programmers/system_qa/blob/main/LICENSE)