# src/bash/pgsql-runner/funcs/remove-action-files.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecRemoveActionFiles comments ...
# ---------------------------------------------------------
doSpecRemoveActionFiles(){

	doLog "DEBUG START doSpecRemoveActionFiles"
	
	cat doc/txt/pgsql-runner/specs/remove-action-files.spec.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 

	doLog "DEBUG STOP  doSpecRemoveActionFiles"
}
# eof func doSpecRemoveActionFiles


# eof file: src/bash/pgsql-runner/funcs/remove-action-files.spec.sh
