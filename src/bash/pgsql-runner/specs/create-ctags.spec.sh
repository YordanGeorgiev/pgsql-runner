# src/bash/pgsql-runner/funcs/create-ctags.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecCreateCtags comments ...
# ---------------------------------------------------------
doSpecCreateCtags(){

	doLog "DEBUG START doSpecCreateCtags"
	
	cat doc/txt/pgsql-runner/specs/create-ctags.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecCreateCtags"
}
# eof func doSpecCreateCtags


# eof file: src/bash/pgsql-runner/funcs/create-ctags.spec.sh
