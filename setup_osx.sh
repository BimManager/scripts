#!/bin/bash

# 1. install homebrew and cask
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
#brew install cask

# 2. install and set up a Kerberos client
#brew install krb5
#sudo emacs /etc/krb5.conf
#[libdefaults]
#	default_realm = 42.US.ORG
#	forwardable = true
#	proxiable = true
#	dns_lookup_kdc = no
#	dns_lookup_realm = no
#	allow_weak_crypto = true
#
#[realms]
#	42.US.ORG = {
#		  kdc = kdc.42.us.org
#		  admin_server = kdc.42.us.org
#		  default_domain = 42.us.org
#		  default_lifetime = 7d
#		  ticket_lifetime = 7d
#	}
#
#[domain_realm]
#	.42.us.org = 42.US.ORG
#	42.us.org = 42.US.ORG

#sudo emacs /etc/ssh/ssh_config
#Host *.42.us.org
#     SendEnv LANG LC_*
#     StrictHostKeyChecking no
#     GSSAPIAuthentication yes
#     GSSAPIDelegateCredentials yes
#     PasswordAuthentication yes

# 3. install iterm2 and zsh (oh my zsh)
# brew cask install iterm2
# brew install zsh
# chsh -s /bin/zsh

# 4. modify .zshrc

# 5. set up git
#github ssh keys
#~/.gitconfig [alias] st = status
#~/.gitignore_global

# 6. install python3
#brew install python3
#pip3 install virtualenv
#mkdir ~/virtualenvs && cd ~/virtualenvs
#virtualenv jupyter
#source ~/virtualenvs/jupyter/bin/activate
#pip install --upgrade pip
#pip install numpy pandas matplotlib
#pip install jupyter
#jupyter notebook
#deactivate
#pip freeze > requirements.txt
#pip install -r requirements.txt

# 7. install basictex
#brew cask install basictex
#pdflatex main.tex

# 8. install nodejs
#brew install node

# 8. use heredoc
#cat <<EOF > text.txt
#The first line of the text.
#The second line of the text.
#...
#EOF


