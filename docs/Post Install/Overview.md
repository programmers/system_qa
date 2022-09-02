<p align="center">
  <img src="https://raw.githubusercontent.com/programmers/system_qa/main/img/logo/logo.png" alt="Logo">
            
</p>
<hr>

# Install Complete!

🎉 _Congratulations!_ Your system is now ready for all things development. Before diving in, please review the [Master Software Document](https://github.com/programmers/system_qa/blob/master/docs/Software/Software%20Docs.md) to see all of the software descriptions, how-to guides, and licenses for the ecosystems and choices you selected.

<br/>

*Let us now walk through the "Post Install Steps":*

<br/>

## 1. The Guides

First, open up and bookmark the [Master Software Document](https://github.com/programmers/system_qa/blob/master/docs/Software/Software%20Docs.md). The guides column links come in the form of articles, official docs, and YouTube videos.


Note that some may contain install steps and information on an operating system you don't use. This means that software is multi-platform (i.e: Windows). Skip through the OS-specific section to get to core information for learning.

<br/>

## 2. SSH key

It is important to generate your own SSH key pair for many purposes such as accessing servers and gaining access to software repositories. Replace the fake name and email values with your own and execute all in your terminal, line by line.

```
ssh-keygen -t ed25519 -C "alicebob@example.com"
git config --global user.name "Alice Bob"
git config --global user.email "alicebob@example.com"`
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

<br/>

## 3) Enhance Your Shell

[This code](https://gist.github.com/programmers/093a2522020c2cf1ec136463419d5b06) represents a small, unopinioned collection of bashrc functions and aliases that one can append to `~/.bashrc`. They will provide a lot of conveniences with day-to-day usage and can be extended per your use cases. Do not replace your .bashrc with this file, simply append it.


**ZSH Shell Notice**: [ZSH shell](https://www.zsh.org/) and [Oh My ZSH!](https://ohmyz.sh/) are incredibly popular in the industry for all things terminal. Unfortunately, many Programmer's System's scripts and Ansible arrangements do not currently target `~/.zshrc`. Using ZSH will limit the value of what Programmer's System provides. Including these is a major project TODO ([weekend project?](https://github.com/programmers/system_qa/issues/1)).

<br/>

## 4) Consider Setting up Vim or Emacs

This table represents popular emulator or distribution for each editor. You can skip this step if you aren't a Vim/Emacs user.

|                       Vim                           |                             Emacs                              |
|-----------------------------------------------------|----------------------------------------------------------------|
| [VSCode Emulator](https://github.com/VSCodeVim/Vim) | [VSCode Emulator](https://github.com/whitphx/vscode-emacs-mcx) |
| [SpaceVim](https://github.com/SpaceVim/SpaceVim)    | [Doom Emacs](https://github.com/doomemacs/doomemacs/)          |
| [SpaceMacs](https://www.spacemacs.org/)             | [SpaceMacs](https://www.spacemacs.org/)                        |
| [Vimrc](https://github.com/amix/vimrc)              |                                                                |


<br/>

## 5) Give it a Spin!

<br/>

These task _ideas_ depend on your ecosystem selections and choices. These are optional... just for exploring and testing...

<br/>

- Open up Terminator to test out ripgrep, htop, jq, etc.
- Use the CLI to make a fresh React, Angular, or Vue project
- Expose your local server publicly for testing with localtunnel or ngrok
- Use conda to search for scientific packages such jupyter and scipy
- Open up Postman and make API calls to https://dummyjson.com
- Docker pull Mongo and use Compass to define a collection
- Test out WebStorm, PyCharm, Intellij, Clion, Datagrip, Goland, Phpstorm, or Rubymine
- Test out Eclipse Java, Eclipse C++, or Eclipse PHP, or Spring Tool Suite
- Open Insomnia to see how it can connect to you desired GraphQL backend
- Create a git or mercurial repo and make a simple Python project with Pipenv, using flake8
- Do a Docker pull of Postgres and connect to it with DBeaver
- Try out various language version managers: rvm, nvm, jabba, etc
- Use a cloud CLI to connect to your AWS, GCloud, Azure, or DO provider
- Create a local Kubernetes cluster with Kind or MiniKube
- ...and enjoy the powerful tooling and VSCode extensions you now have!
