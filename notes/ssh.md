# SSH basics
ssh-keygen -t ed25519 -C "your.email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# ~/.ssh/config example:
# Host bandit
#   HostName bandit.labs.overthewire.org
#   User bandit0
#   Port 2220
