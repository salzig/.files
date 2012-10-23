#!/usr/bin/env bash

FILE="$HOME/Library/KeyBindings/DefaultKeyBinding.dict"
PATH=`dirname $FILE`

/bin/mkdir -p $PATH

/usr/libexec/PlistBuddy -c 'Add :"~ " string ("insertText:", " ")' $FILE
/usr/bin/plutil -convert json -r $FILE
