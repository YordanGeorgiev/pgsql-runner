# src/bash/pgsql-runner/funcs/gmail-package.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpGmailPackage comments ...
# ---------------------------------------------------------
doHelpGmailPackage(){

	doLog "DEBUG START doHelpGmailPackage"
	
	cat doc/txt/pgsql-runner/helps/gmail-package.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpGmailPackage"
}
# eof func doHelpGmailPackage


# eof file: src/bash/pgsql-runner/funcs/gmail-package.help.sh
