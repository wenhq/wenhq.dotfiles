# dotfiles

When on a new mac:

```
# 1. Install XCode
sudo softwareupdate -i -a
xcode-select --install

# 2. Install Software
cd ~
git clone https://github.com/coderzh/dotfiles.git
source dotfiles/install.sh

# 3. Restore dotfiles
mackup restore
```
