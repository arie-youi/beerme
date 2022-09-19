# 🍺 You.i TV Homebrew 🍺
The purpose of this repo is to allow a user to quickly switch between Android dependency

## Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install latest Android dependencies
```
brew bundle
```

## Installing older formulas/casks manually
```
brew tap arie-youi/beerme https://github.com/calvinlewis/beerme.git
brew install arie-youi/beerme/<formula>
brew cask install arie-youi/beerme/<cask>
```

### Note
You can only install one cask at a time. If you plan on downgrading or upgrading a cask (ex. cmake, android-ndk) then you must `brew cask uninstall <cask>` and then install the new cask.

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

TO DO:
fix docs
add sem links
add brew bundle cleanup
add unlinking
switch NDK 17 to 17c
Rename NDK versions on install