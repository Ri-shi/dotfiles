#!/bin/sh

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
	nvim ~/Workspace/dotfiles/$(ls -f ~/Workspace/dotfiles/ | fzf)
}

# Continuos Code Run
# run() {
# 	echo "Yo. Type command to continously run execute below: "
# 	read COMMAND
# 	echo "Specify output log file [leave blank for no file]: "
# 	read LOG

	
# 	while :
# 	do
# 		echo "Start Run? [y/n]: "
# 		read UINP
# 		case $UINP in
# 			n) echo "Waiting on you" ;;
# 			y) 
# 				clear
# 				echo "Running [$COMMAND]"
# 				echo
# 				if [ -z "$LOG" ]
# 				then
# 					$COMMAND
# 				else
# 					$COMMAND > $LOG
# 					echo "Complete. Output to $LOG"
# 					open $LOG
# 				fi ;;
# 			*) echo "Not a valid option. (y=Run, n=Do Nothing, ^C to quit)" ;;
# 		esac
# 	done
	
# }

# SSH_SERVER_CONFIG
startserver() {
	VBoxManage startvm "Ubuntu Server" --type headless
	ssh rishi@192.168.56.101
}

shutdownserver() {
	VBoxManage controlvm "Ubuntu Server" poweroff
}
