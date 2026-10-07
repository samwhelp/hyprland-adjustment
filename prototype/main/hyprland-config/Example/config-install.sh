#!/usr/bin/env bash

set -e


################################################################################
### Head: hyprland
##

hyprland_config_run_pre () {

	hyprland_service_stop


	return 0

}

hyprland_config_run_post () {

	hyprland_service_start


	return 0

}

hyprland_service_stop () {

	hyprland_service_stop_xfconfd

	#hyprland_service_stop_xfsettingsd


	return 0

}

hyprland_service_stop_xfconfd () {

	if killall -9 xfconfd; then
		return 0
	fi


	return 0

}

hyprland_service_stop_xfsettingsd () {

	if killall -9 xfsettingsd; then
		return 0
	fi


	return 0

}

hyprland_service_start () {


	return 0

}

hyprland_config_install () {

	echo
	echo "##"
	echo "## Config: hyprland"
	echo "##"
	echo


	hyprland_config_install_by_dir


	echo

}

hyprland_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: hyprland
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	hyprland_config_run_pre

	hyprland_config_install

	hyprland_config_run_post

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
