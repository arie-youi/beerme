# 🍺 You.i TV Homebrew 🍺
The purpose of this repo is to ensure the proper third party dependencies for the You.i Engine are installed at the correct versions as per `youi-tv doctor`.

## Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install 6.0 Dependencies
```
brew bundle
```

## Installing older formula/casks manually
```
brew tap calvinlewis/beerme https://github.com/calvinlewis/beerme.git
brew install calvinlewis/beerme/<formula>
brew cask install calvinlewis/beerme/<cask>
```

### Note
You can only install one cask at a time. If you plan on downgrading a cask (ex. cmake, android-ndk) then you must `brew cask uninstall <cask>` and then install the new cask.

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
