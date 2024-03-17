# Ricardo's dotfiles
based on https://github.com/paulirish/dotfiles and https://github.com/mathiasbynens/dotfiles

## Troubleshooting
always try to refer to https://github.com/robbyrussell/oh-my-zsh/wiki/Troubleshooting when having issues.

### `bash` is not the latest version
- if bash is not automatically updated to v4+
- edit `/etc/shells` and move the updated bash path (`which bash`) to the top

### `zsh` not default shell ([reference](https://stackoverflow.com/questions/31034870/making-zsh-default-shell-in-macosx))
- make sure `zsh` is in your list of authorized shells: `cat /etc/shells`
- the correct path to `zsh` can be found with `which zsh`

```
sudo echo "$(which zsh)" >> /etc/shells
chsh -s $(which zsh)
```

### completion issues
1. First, try to remove your completion cache with `rm ~/.zcompdump*`, close and reopen your shells.
2. if it doesn't work, please see https://github.com/robbyrussell/oh-my-zsh/issues/630#issuecomment-70291622

### history not working
- check permissions on `~/.zsh_history`
- it should be owner by the current user and not `root` (this might happen if `zsh` is installed with root)

### gcc (C compiler) doesn't work
- open xcode -> preferences -> locations
- update command line tools to use xcode

### working with ssh keys (passphrases)
- please see [Adding your SSH key to the ssh-agent](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#adding-your-ssh-key-to-the-ssh-agent)

## Adding Touch ID support for `sudo`ing
- `sudo vi /etc/pam.d/sudo`
- add the following line to the top: `auth sufficient pam_tid.so`
