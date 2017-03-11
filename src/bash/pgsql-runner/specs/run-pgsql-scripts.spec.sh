# src/bash/pgsql-runner/funcs/run-pgsql-scripts.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecRunPgsqlScripts comments ...
# ---------------------------------------------------------
doSpecRunPgsqlScripts(){

	doLog "DEBUG START doSpecRunPgsqlScripts"
	
	cat doc/txt/pgsql-runner/specs/run-pgsql-scripts.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecRunPgsqlScripts"
}
# eof func doSpecRunPgsqlScripts


# eof file: src/bash/pgsql-runner/funcs/run-pgsql-scripts.spec.sh
