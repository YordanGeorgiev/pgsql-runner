#v1.0.5
#------------------------------------------------------------------------------
#  Purpose: 
#  export to_repl=<<the-string-to-replace-with>>
#------------------------------------------------------------------------------
doTestMorphDir(){
		
	doLog " INFO START : morph-dir.test"

	# doSpecMorphDir
	echo this function should not work without setting the following shell vars
	echo export dir_to_morph="<<the-dir-to-search-and-replace>>"
	echo to_srch="<<to_srch>>"
	echo to_repl="<<to_repl>>"

	sleep 1	
	bash src/bash/pgsql-runner/pgsql-runner.sh -a morph-dir
	echo now this test should succeed	
	mkdir -p /tmp/src/bash	
	cp -rv src/bash/pgsql-runner /tmp/src/bash
	export dir_to_morph=/tmp/src/bash/pgsql-runner
	export to_srch=pgsql-runner
	export to_repl=new-app
	bash src/bash/pgsql-runner/pgsql-runner.sh -a morph-dir
	
	echo "and check the produced dir"
	find /tmp/src/bash/new-app -type f
	doLog " INFO STOP  : morph-dir.test"

}
#eof doMorphDir

#eof file: src/bash/pgsql-runner/tests/dev/morph-dir.test.sh
