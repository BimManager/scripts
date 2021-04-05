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
# 5.1 Add an SSH public key
# ls -al ~/.ssh # to view all available keys
# ssh-keygen -t ed25519 -C "your_email@example.com"
# eval `ssh-agent -s`
# ssh-add ~/.ssh/id_ed25519
# add the public key to the github account
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

# 9. use heredoc
#cat <<EOF > text.txt
#The first line of the text.
#The second line of the text.
#...
#EOF

# 10. install jq
#brew install jq


# some handy commands
# ls -l details
# total (# of 512-blocks)
# type (d)(-) | access_modes | links | owner | group | size (in bytes) | modification_date | name
# uname
# host google.com
# sort
# !! - repeat the last command
# !$ - the first argument of the last command
# command chaining (; / && / &)
# ; -> the next command runs if the previous command fails
# && -> the next command is executed if and only if the previous command succeeds
# & -> put a command in the background
# nc 'netcat'
# colrm [start [end]]
# du -h ~/file; du -hs ~/dir

# git commands (.git/config)
# git branch <branch_name>
# git checkout <branch_name>
# git push -u <remote> <branch_name>
# git branch --list
# git branch -d <branch_name>
# git push <remote> <branch_name>
# git pull <remote>
# git remote show <remote>
# git log --oneline
# git remote add <alias> <url> 
# git remote -v /* to view a list of remote urls */
# git remote set-url <existing-alias> <url>
# git remote set-url github https://github.com/bimmanager/bar
# git reflog /* to get a list of hashes */
# git reset --soft[--hard] HASH /* to undo a local commit */
# git revert HASH /* to undo a remote commit */
# git branch -d <branch-name> */ to delete a local branch */
# git push <remote-name> --delete <branch-name> /* to delete a remote branch */

# === how to push to two remote repos simultaneously ===
# git remote add github https://github.com/bimmanager/foo
# git remote add forty-two https://github.com/bimmanager/baz
# git remote set-url --add --push origin https://github.com/bimmanager/foo
# git remote set-url --add --push origin https://github.com/bimmanager/baz
# git remote show origin



