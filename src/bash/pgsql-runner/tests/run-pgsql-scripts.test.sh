# src/bash/pgsql-runner/funcs/run-pgsql-scripts.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestRunPgsqlScripts comments ...
# ---------------------------------------------------------
doTestRunPgsqlScripts(){

	doLog "DEBUG START doTestRunPgsqlScripts"
	
	cat doc/txt/pgsql-runner/tests/run-pgsql-scripts.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# Action !!!
	bash src/bash/pgsql-runner/pgsql-runner.sh -a run-pgsql-scripts
   exit_code=$?
   doLog "DEBUG STOP  doTestRunPgsqlScripts"
}
# eof func doTestRunPgsqlScripts


# eof file: src/bash/pgsql-runner/funcs/run-pgsql-scripts.test.sh
