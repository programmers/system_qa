
############
## UBUNTU ##
############

sudo adduser mvim
sudo usermod -aG sudo mvim
sudo passwd mvim

su - mvim

sudo apt-get update -y && sudo apt-get upgrade -y


############
## FEDORA ##
############

sudo dnf install git -y
sudo adduser mvim
sudo usermod -aG wheel mvim
sudo passwd mvim

su - mvim

sudo dnf update -y

################
## EVERYTHING ##
################

git config --global user.name "Matthew Vita"
git config --global user.email "matthewvita48@gmail.com"

# add to github https://github.com/settings/keys
#      https://github.com/programmers/system_qa
ssh-keygen -t ed25519 -C "matthewvita48@gmail.com"
cat ~/.ssh/id_ed25519.pub
cd ~
git clone git@github.com:programmers/system_qa.git
mv system_qa system
cd system
git pull

########
 1 config                                                                     X 
 [core]
     repositoryformatversion = 0
     filemode = true
     bare = false
     logallrefupdates = true
 [remote "origin"]
     url = git@github.com:programmers/system_qa.git
     fetch = +refs/heads/*:refs/remotes/origin/*
 [branch "main"]
     remote = origin
     merge = refs/heads/main
~                                                                               
~                                                                               
~                                                                   
