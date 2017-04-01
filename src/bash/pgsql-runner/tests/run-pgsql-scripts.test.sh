# src/bash/pgsql-runner/funcs/run-pgsql-scripts.test.sh

# v1.1.0
# ---------------------------------------------------------
# docs cat doc/txt/pgsql-runner/tests/run-pgsql-scripts.test.txt
# ---------------------------------------------------------
doTestRunPgsqlScripts(){

	doLog "DEBUG START doTestRunPgsqlScripts"
	
	test -z "$sleep_interval" || sleep "$sleep_interval"

	doLog "test the running of the sql scripts under the product instance dir"
	doLog "Action !!! "
	doLog "bash src/bash/pgsql-runner/pgsql-runner.sh -a run-pgsql-scripts"

	bash src/bash/pgsql-runner/pgsql-runner.sh -a run-pgsql-scripts
   exit_code=$?
   test $exit_code -ne 0 && doExit $exit_code $exit_msg
   
	doLog "test the running of the sql scripts outside the product instance dir"
	doLog "with pre-set exported sql_dir var : aka export sql_dir=/tmp/pgsql-runner"

   mkdir -p /tmp/pgsql-runner
   cp -vr src/sql/pgsql/dev_pgsql_runner/* /tmp/pgsql-runner/   
   export sql_dir=/tmp/pgsql-runner

	doLog "Action !!! "
	doLog "bash src/bash/pgsql-runner/pgsql-runner.sh -a run-pgsql-scripts"
	bash src/bash/pgsql-runner/pgsql-runner.sh -a run-pgsql-scripts
   exit_code=$?
   doLog "DEBUG STOP  doTestRunPgsqlScripts"
}
# eof func doTestRunPgsqlScripts


# eof file: src/bash/pgsql-runner/funcs/run-pgsql-scripts.test.sh
