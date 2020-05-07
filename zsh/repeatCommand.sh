echo "Yo. Type command to continously run execute below: "
read COMMAND
echo "Specify output log file [leave blank for no file]: "
read LOG


while :
do
	echo "Repeat? [<enter>/n/q]: "
	read UINP
	case $UINP in
		q) break ;;
		"") 
			clear
			echo "Running [$COMMAND]"
			echo
			if [ -z "$LOG" ]
			then
				$COMMAND
			else
				$COMMAND > $LOG
				echo "Complete. Output to $LOG"
				open $LOG
			fi ;;
		n)
			clear
			echo "Enter new command"
			read COMMAND
			echo "New Command set. Will run on next repeat" ;;
		*) echo "Not a valid option. (<enter> = Run Again, n = new command, ^C or q = quit)" ;;
	esac
done

