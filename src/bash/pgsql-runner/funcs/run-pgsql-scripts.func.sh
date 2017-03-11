# src/bash/pgsql-runner/funcs/run-pgsql-scripts.func.sh

# v1.0.0
# ---------------------------------------------------------
# todo: add doRunPgsqlScripts comments ...
# ---------------------------------------------------------
doRunPgsqlScripts(){

	doLog "DEBUG START doRunPgsqlScripts"
	
	cat doc/txt/pgsql-runner/funcs/run-pgsql-scripts.func.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# Action !!!

	doLog "DEBUG STOP  doRunPgsqlScripts"
}
# eof func doRunPgsqlScripts


# eof file: src/bash/pgsql-runner/funcs/run-pgsql-scripts.func.sh
