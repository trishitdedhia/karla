#!/bin/bash

if [[ -f ~/.zshrc ]]
then
  file=~/.zshrc
elif [[ -f ~/.bashrc ]]
then
  file=~/.bashrc
else
  echo "Couldn't add path: .zshrc or .bashrc not found."
  echo "Please export path manually."
  exit 1
fi

echo "" >> $file
echo "# KARLA" >> $file
echo 'export PATH="$PATH:/usr/local/karla/bin"' >> $file

exit 0
