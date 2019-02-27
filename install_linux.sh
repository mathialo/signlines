#! /bin/bash

if [[ "$EUID" != "0" ]]; then
	echo "Run me as root!"
	exit;
fi

echo "Copying files"
mkdir -p /usr/local/share/texmf/tex/latex/signlines
cp signlines.sty /usr/local/share/texmf/tex/latex/signlines
echo "Updating package index"
cd /usr/local/share/texmf/ && mktexlsr > /dev/null

read -p "Are you using TeXstudio? [y/n] " yn
if [[ "$yn" == "y" || "$yn" == "Y" ]]; then
	echo "Installing auto-completion file"
	mkdir -p ~/.config/texstudio/completion/user
	cp signlines.cwl ~/.config/texstudio/completion/user
	chmod 644 ~/.config/texstudio/completion/user/signlines.cwl
fi

echo "Installation done"