# src/bash/pgsql-runner/funcs/clone-to-app.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestCloneToApp comments ...
# ---------------------------------------------------------
doTestCloneToApp(){

	doLog "DEBUG START doTestCloneToApp"
	
	# add your action implementation code here ... 
   bash src/bash/pgsql-runner/pgsql-runner.sh -a to-app=foobar

	doLog "DEBUG STOP  doTestCloneToApp"
}
# eof func doTestCloneToApp


# eof file: src/bash/pgsql-runner/funcs/clone-to-app.test.sh
