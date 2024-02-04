![logo](logo.jpg)

## Welcome

Setting up a development machine is a time-consuming and error-prone process. Programmer's System eliminates these issues by providing a light weight, automated, configurable solution to install your software ecosystems in Linux/Mac enviroments.

## Ecosystems

Utilizing the traditional **requirements.txt** configuration style, you can effortlessly define the packages to be included in your distribution. Afterward, the command-line interface (CLI) is run used to do the rest:

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

#### HELP WANTED. THANK YOU.

**General Work**: Add configuration framework (Bash/JSON) ([233](https://google.com)), limit use of Snap ([2823](www.a.com))
<br/>
**New Ecosystems**: Mobile ([932](https://google.com)), Scientific ([992](https://google.com)), C# ([2182](https://google.com))
<br/>
**Packages**: Rework Kubectl [843](https://google.com), add Terraform [482](https://google.com), add Java Gradle ([9834(www.a.com)]) & STS ([123](www.google.com)), add C & C++ Conan ([23](www.google.com)), add DB client pgadmin4 desktop ([823](www.as.com)]), Go cleanup ([223](www.googl.com))
<br/>
**OS Support**: Implement [OSX 14](google.com) and top picks from distrowatch ([548](https://google.com))
<br/>
**Bash**: Make sys a proper binary [9823](google.com), refactor install_ecosystem func ([2398](www.google.com)), clean up exec_script file name extract ([293](https://google.com)), refactor install_ecosystems ([293](www.google.com))
<br/>
**Hardening**: Implement CI/CD nightly builds [488](https://google.com)


## License

[MIT](https://github.com/programmers/system_qa/blob/main/LICENSE)