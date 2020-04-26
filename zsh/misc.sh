# WorkSpace select
wks() {
	cd ~/Workspace/ && cd $(ls | fzf)
}

# Vim Session Select
vs() {
	nvim -S ~/sessions/$(ls ~/sessions/ | fzf)
}

# Edit Dotfiles
dots() {
	nvim ~/dotfiles/$(ls -f ~/dotfiles/ | fzf)
}


# SSH_SERVER_CONFIG
startserver() {
	VBoxManage startvm "Ubuntu Server" --type headless
	ssh rishi@192.168.56.101
}

shutdownserver() {
	VBoxManage controlvm "Ubuntu Server" poweroff
}


