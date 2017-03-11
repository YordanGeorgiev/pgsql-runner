# src/bash/pgsql-runner/funcs/generate-sql.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestGenerateSQL comments ...
# ---------------------------------------------------------
doTestGenerateSQL(){

	doLog "DEBUG START doTestGenerateSQL"
	
	cat doc/txt/pgsql-runner/tests/generate-sql.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
   bash src/bash/pgsql-runner/pgsql-runner.sh -a generate-sql

	doLog "DEBUG STOP  doTestGenerateSQL"
}
# eof func doTestGenerateSQL


# eof file: src/bash/pgsql-runner/funcs/generate-sql.test.sh
