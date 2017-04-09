#v1.0.7 
#------------------------------------------------------------------------------
# prints the usage of this script
#------------------------------------------------------------------------------
doPrintUsage(){

   printf "\033[2J";printf "\033[0;0H"
   
	cat <<END_HELP

   #
   ## START --- USAGE `basename $0`
   #-----------------------------------------------------------------------------
      bash $0
      bash $0 -u
      bash $0 -usage
      bash $0 --usage

      bash $0 -h
      bash $0 -help
      bash $0 --help

      # to run the sql scripts bellow the product-instance-dir sql-dir : $sql_dir
      bash $0 run-pgsql-scripts

      # to ruun the sql scripts bellow a pre-difined root dir	
      export sql_dir=`pwd`/src/sql/pgsql/dev_issue_tracker
      bash /opt/csitea/pgsql-runner/src/bash/pgsql-runner.sh -a run-pgsql-scripts

		# and here you have some more packaging calls .. 
      bash $0 -a create-full-package -i <<path_to_include_file>> -a gmail-package
		bash $0 -a create-relative-package -i <<path_to_include_file>> -a gmail-package

      bash $0 -a remove-package-files -i <<path_to_include_file>>

		bash $0 -a to-tst
		bash $0 -a to-dev
		bash $0 -a to-prd
      bash $0 -a to-ver=1.0.5
      bash $0 -a to-app=<<new_app_name>>
      bash $0 -a check-perl-syntax
      bash $0 -a run-perl-tests

      bash $0 -a save-tmux-session
      bash $0 -a restore-tmux-session
		
	Note the usage is quite long - you might wanto to use the less page :
      `basename $0` --usage \| less

   #
   ## STOP  --- USAGE `basename $0`
   #------------------------------------------------------------------------------

END_HELP
}
#eof func doPrintUsage
