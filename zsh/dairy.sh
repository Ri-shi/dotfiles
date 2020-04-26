# Diary entry
diary() {
	# Get Current directory to move back to later
	RLASTDIR=$PWD
	cd ~/diary

	# Get the name of today's file
	ADATE=$(date +%d.%m.%y)
	RDATE=$ADATE.md
	# If doesnt exist yet create it
	if [ ! -f $RDATE ]; then
		touch $RDATE
		# Make the title in file today's date
		echo \# $ADATE > $RDATE
		echo >> $RDATE
		# Echo in the template
		cat diary_template.md >> $RDATE

		# Add and commit file to git
		
	fi
	nvim $RDATE

	diary_commit &
	cd $RLASTDIR
}

diary_commit() {
	git add . >> ~/diary/git.log
	git commit -m "$(date +%d.%m.%y.%M.%S)" -q >> ~/diary/git.log
	quiet_git push
}

quiet_git() {
    stdout="git.log"
    stderr="git.log"

    if ! git "$@" </dev/null >$stdout 2>$stderr; then
        cat $stderr >&2
        # rm -f $stdout $stderr
        exit 1
    fi

    # rm -f $stdout $stderr
    echo "\n\nSynced Diary\n\n"
}


