# src/bash/pgsql-runner/funcs/log-test-run-entry.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpLogTestRunEntry comments ...
# ---------------------------------------------------------
doHelpLogTestRunEntry(){

	doLog "DEBUG START doHelpLogTestRunEntry"
	
	cat doc/txt/pgsql-runner/helps/log-test-run-entry.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpLogTestRunEntry"
}
# eof func doHelpLogTestRunEntry


# eof file: src/bash/pgsql-runner/funcs/log-test-run-entry.help.sh
