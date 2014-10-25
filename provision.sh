function installRVM() {
	curl -sSL https://get.rvm.io | bash -s stable --ruby
}

function makeDirectories() {

	mkdir ~/scripts/
	mkdir ~/Projects/
	mkdir ~/Projects/Websites/
	mkdir ~/Projects/Applications/
	mkdir ~/Projects/Scripts/
	mkdir ~/Projects/Hacks/

}

function installHomebrew() {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

function installBrews() {
  
  brew tap caskroom/homebrew-cask
  brews=( vim git the_silver_searcher phantomjs fontforge ttfautohint rename tree wget cmake brew-cask siege )

  for item in "${brews[@]}"

  do
    if [[ $item == "vim" ]]; then
      brew install $item --override-system-vim
    else
      brew install $item
    fi
  done

}

function installSoftware() {
  
  casks=( dropbox alfred vlc xscope onepassword steam evernote \
  				google-chrome firefox phpstorm sublime-text limechat \
  				sequel-pro little-snitch google-drive vagrant vagrant-manager \
  				caffeine kindle wireshark skype spotify nmap node
        )

  for item in "${casks[@]}"
  do
    brew cask install $item
  done

}

function installNPM() {

  npmModules=( vtop bower grunt-cli yo )

  for item in "${npmModules[@]}"
  do
    sudo npm install -g $item
  done

}

makeDirectories && \
installHomebrew && \
installRVM && \
installBrews && \
installSoftware && \
installNPM \