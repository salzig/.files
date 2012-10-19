#!/usr/bin/env bash

FILE="$HOME/Library/KeyBindings/DefaultKeyBinding.dict"


/usr/libexec/PlistBuddy -c 'Add :"~ " string ("insertText:", " ")' $FILE
/usr/bin/plutil -convert json -r $FILE
