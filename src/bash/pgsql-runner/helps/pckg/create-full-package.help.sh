#!/bin/bash 

#v0.2.1
#------------------------------------------------------------------------------
# creates the full package as component of larger product platform
#------------------------------------------------------------------------------
doHelpCreateFullPackage(){
	
	cat doc/txt/pgsql-runner/specs/pckg/create-full-package.spec.txt
	
	sleep $sleep_interval
   printf "\033[2J";printf "\033[0;0H"
}
#eof spec doCreateFullPackage

