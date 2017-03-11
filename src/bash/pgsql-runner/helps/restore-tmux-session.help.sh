# src/bash/pgsql-runner/funcs/restore-tmux-session.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpRestoreTmuxSession comments ...
# ---------------------------------------------------------
doHelpRestoreTmuxSession(){

	doLog "DEBUG START doHelpRestoreTmuxSession"
	
	cat doc/txt/pgsql-runner/helps/restore-tmux-session.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpRestoreTmuxSession"
}
# eof func doHelpRestoreTmuxSession


# eof file: src/bash/pgsql-runner/funcs/restore-tmux-session.help.sh
