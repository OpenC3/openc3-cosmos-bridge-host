# OpenC3 COSMOS Host Plugin

WARNING: This allows COSMOS to execute arbitrary commands on the host system on which it is running!

## Building the plugin

1. <Path to COSMOS installation>\openc3.bat cli rake build VERSION=X.Y.Z
   - VERSION is required
   - gem file will be built locally

## Upload plugin

1. Go to localhost:2900/tools/admin
1. Click the paperclip icon and choose your plugin.gem file
1. Fill out plugin parameters
1. Click Install

## Run the local host application

1. Install a local copy of Ruby
   - Mac: Homebrew, rbenv, RVM
   - Windows: https://rubyinstaller.org/
   - Linux: rbenv, RVM
1. On Mac OS with Homebrew ensure the Ruby gem bin stubs are in the path
   - export PATH="/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
1. Install openc3 gem
   - gem install openc3
1. Install openc3-cosmos-host gem (substitute X.Y.Z with the actual version number)
   - gem install openc3-cosmos-host-X.Y.Z.gem
1. Run the local bridge
   - openc3cli bridgegem openc3-cosmos-host
