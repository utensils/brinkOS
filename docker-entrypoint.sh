#!/bin/bash

# Used to keep travis from timing out.
keep_alive(){
	while kill -0 $1 > /dev/null 2>&1; do
		echo "$(date) Ping!"
		sleep 300
	done
}

if [ "$#" -eq 0 ]; then
	echo "Building brinkOS installer and deps"
	cd /AUR/packages/qt5-styleplugins-git
	sudo -u build makepkg -si --noconfirm
	repo-add /AUR/repo/AUR.db.tar.gz *.pkg.tar.xz
    mv *.pkg.tar.xz /AUR/repo/
    cd /build/packages/brinkOS-installer
    sudo -u build makepkg -s --noconfirm
    repo-add /build/brinkOS-packages/brinkOS.db.tar.gz *.pkg.tar.xz
    mv *.pkg.tar.xz /build/brinkOS-packages/
	echo "Building brinkOS"
	cd /build/archlive/ || exit
	./build.sh -v -N brinkOS -o /iso &
	build_pid=$!
	keep_alive $build_pid
	exit $?
else
	exec "$@"
fi
