# src/bash/pgsql-runner/funcs/run-pgsql-scripts.func.sh

# v1.0.1
# ---------------------------------------------------------
# todo: add doRunPgsqlScripts comments ...
# ---------------------------------------------------------
doRunPgsqlScripts(){

	doLog "DEBUG START doRunPgsqlScripts"
	
	cat doc/txt/pgsql-runner/funcs/run-pgsql-scripts.func.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# Action !!!

	doLog "[DEBUG] START doRunProjectpgsqlScripts"
	pushd .

   
	export tmp_log_file=$tmp_dir/.$$.log
	doLog " START == running sql scripts "	
	# and clear the screen
	#flush the screen
	printf "\033[2J";printf "\033[0;0H"
	
	echo $pgsql_user 
	sql_dir="$product_instance_dir/src/sql/pgsql/$pgsql_db"
   # if a relative path is passed add to the product version dir
	[[ $sql_dir == /* ]] || export sql_dir="$product_instance_dir""$sql_dir"
   sql_script="$sql_dir/""00.create-db.pgsql"
   
   # run the sql save the result into a tmp log file
   psql -v ON_ERROR_STOP=1 -q -t -X -U "$pgsql_user" \
       -v pgsql_db="$pgsql_db" -f "$sql_script" postgres > "$tmp_log_file" 2>&1

   ret=$?
   test $ret -ne 0 && doExit $ret "pid: $$ psql ret $ret - failed to run sql_script: $sql_script !!!"
 
	# show the developer what happened
	cat "$tmp_log_file" 

	# and save the tmp log file into the log file
	cat "$tmp_log_file" >> $log_file
   sleep 3

	test -z "$is_sql_biz_as_usual_run" && sleep 1 ; 
	#flush the screen
	printf "\033[2J";printf "\033[0;0H"
	
	doLog "should run the following sql files"
   echo -e "\n\n"
	find "$sql_dir" -type f -name "*.sql"|sort -n
	sleep 2

	# run the sql scripts in alphabetical order
   while read -r sql_script ; do (

		relative_sql_script=$(echo $sql_script|perl -ne "s#$product_instance_dir##g;print")

		# give the poor dev a time to see what is happening
		test -z "$is_sql_biz_as_usual_run" && sleep 1 ; 

		# and clear the screen
		printf "\033[2J";printf "\033[0;0H"

		doLog " START ::: running $relative_sql_script"
		echo -e '\n\n'
		# run the sql save the result into a tmp log file
		psql -v ON_ERROR_STOP=1 -q -t -X -U "$pgsql_user" \
         -v pgsql_db="$pgsql_db" -f "$sql_script" "$pgsql_db"> "$tmp_log_file" 2>&1
      
      test $ret -ne 0 && doExit $ret "pid: $$ psql ret $ret - failed to run sql_script: $sql_script !!!"

		# show the user what is happenning 
		cat "$tmp_log_file"

		# and save the tmp log file into the script log file
		cat "$tmp_log_file" >> $log_file
		echo -e '\n\n'

		doLog " STOP  ::: running $relative_sql_script"
		#debug sleep 1 
	);
	done < <(find "$sql_dir" -type f -name "*.sql"|sort -n)
	
	doLog " STOP  == running sql scripts "	
	test -z "$is_sql_biz_as_usual_run" && sleep 1 ; 
	# and clear the screen
	printf "\033[2J";printf "\033[0;0H"

	popd 
	doLog "[DEBUG] STOP  doRunProjectpgsqlScripts"
	set +e
	doLog "DEBUG STOP  doRunPgsqlScripts"
}
# eof func doRunPgsqlScripts


# eof file: src/bash/pgsql-runner/funcs/run-pgsql-scripts.func.sh
