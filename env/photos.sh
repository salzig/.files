#!/bin/bash

# Stop Photos from opening when attaching an iphone via cable
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES
