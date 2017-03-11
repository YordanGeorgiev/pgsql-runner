# src/bash/pgsql-runner/funcs/tmux-common.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestTmuxCommon comments ...
# ---------------------------------------------------------
doTestTmuxCommon(){

	doLog "DEBUG START doTestTmuxCommon"
	
	cat doc/txt/pgsql-runner/tests/tmux-common.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doTestTmuxCommon"
}
# eof func doTestTmuxCommon


# eof file: src/bash/pgsql-runner/funcs/tmux-common.test.sh
