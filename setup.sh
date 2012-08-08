#!/usr/bin/env bash

for f in `ls -A home/`
do
	if [ -e ~/$f ]; then rm ~/$f; fi
	
	ln -s `pwd`/home/$f ~/$f
done

