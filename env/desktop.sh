#!/bin/bash

# no desktop icons
defaults write com.apple.finder CreateDesktop -bool false
killall Finder

# no floating screenshot tool, store immediately
defaults write com.apple.screencapture show-thumbnail -bool false

