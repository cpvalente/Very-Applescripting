# Mostly ripped of from QLabs guide
# https://figure53.com/docs/qlab/v3/general/preparing-your-mac/
# Could be easier to enable sudo mode sudo -s

# Disable spotlight
sudo mdutil -a -i off

# Disable Display Sleep, Disk Spindown, and System Sleep
sudo pmset -a displaysleep 0 disksleep 0 sleep 0

# Disable Screen Saver
defaults -currentHost write com.apple.screensaver idleTime 0

# Disable Energy Saver
sudo pmset -a systemsleep 0 displaysleep 0 autorestart 1

# Disable System Sounds
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

# Disable Time Machine
sudo tmutil disable

# Disable Software Update
sudo softwareupdate --schedule off

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

# Disable Notification Center
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

# Disable Mission Control
defaults write com.apple.dock mcx-expose-disabled -bool TRUE

# Disable Displays have separate spaces (what is this all about anyway)
defaults write com.apple.spaces spans-displays -bool TRUE
