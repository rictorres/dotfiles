# backup old machine's key items
# run this on old machine and send `~/backup` to the cloud

mkdir -p ~/backup/home
mkdir -p ~/backup/home/Library/"Application Support"
mkdir -p ~/backup/Library/Preferences/
mkdir -p ~/backup/Library/Application Support/
mkdir -p ~/backup/rootLibrary/Preferences/SystemConfiguration/

# what is worth reinstalling?
brew leaves              > ~/backup/brew-list.txt    # all top-level brew installs
brew cask list           > ~/backup/cask-list.txt
npm list -g --depth=0    > ~/backup/npm-g-list.txt
yarn global list --depth=0 > ~/backup/yarn-g-list.txt

# backup some dotfiles (or dotfolders) likely not under source control
cp -Rp \
    ~/.aws \
    ~/.bash_history \
    ~/.config \
    ~/.extra \
    ~/.gnupg \
    ~/.nano \
    ~/.nanorc \
    ~/.ssh \
    ~/.vscode \
    ~/.z \
    ~/.zcompdump \
    ~/.zcompdump* \
    ~/.zsh_history \
        ~/backup/home

cp -Rp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/backup/rootLibrary/Preferences/SystemConfiguration/ # wifi
cp -Rp ~/Library/Fonts ~/backup/Library/ # all those fonts you've installed

# editor settings & plugins
cp -Rp ~/Library/Application\ Support/Code ~/backup/Library/"Application Support"
