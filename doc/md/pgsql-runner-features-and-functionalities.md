#  PGSQL-RUNNER FEATURES AND FUNCTIONALITIES


Table of Contents

  * [1. INTRO](#1-intro)
  * [2. BASIC STDOUT, STDERR AND FILE LOGGING](#2-basic-stdout,-stderr-and-file-logging)
    * [2.1. Debug log output configurability ](#21-debug-log-output-configurability-)
  * [3. SUPPORT FOR LOGICAL ENVIRONMENTS](#3-support-for-logical-environments)
    * [3.1. Configurability of the logical environments](#31-configurability-of-the-logical-environments)
  * [4. CONFIGURABILITY](#4-configurability)
    * [4.1. Per host configurability](#41-per-host-configurability)
    * [4.2. Database names configurability](#42-database-names-configurability)
  * [5. POSTGRE SQL SCRIPTS RUN](#5-postgre-sql-scripts-run)
    * [5.1. Initial create db sql script](#51-initial-create-db-sql-script)
    * [5.2. Running sql scripts in files alphabetic order](#52-running-sql-scripts-in-files-alphabetic-order)
    * [5.3. Logging sql scripts files run output to STDOUT , STDERR and a logfile](#53-logging-sql-scripts-files-run-output-to-stdout-,-stderr-and-a-logfile)
    * [5.4. Exit on sql script command fail](#54-exit-on-sql-script-command-fail)
    * [5.5. Run the sql scripts from pre-set in the shell sql_dir](#55-run-the-sql-scripts-from-pre-set-in-the-shell-sql_dir)
  * [6. DOCUMENTATION](#6-documentation)
    * [6.1. README](#61-readme)
    * [6.2. DevOpsGuide](#62-devopsguide)
    * [6.3. Features and Functionalities doc](#63-features-and-functionalities-doc)


## 1. INTRO
This document presents the existing features and functionalities of this tool.
The pgsql tool is a clone/fork/derivative of the wrapp tool:
https://github.com/YordanGeorgiev/wrapp
Thus it inherits (allmost) all of the wrapp tool features and functionalities ... Thus if any functionalty exists and it is ommited you most probably could find it in the features and functionalities doc of the wrapp tool or in the &lt;&lt;func-action-name&gt;&gt;.spec.txt unnder the doc/txt dir ... 

## 2. BASIC STDOUT, STDERR AND FILE LOGGING
The tool logs ( quite verbosely ) all its operations. The verbosity could be adjusted via the configuration file. 

### 2.1. Debug log output configurability 
You could turn off the doLog DEBUG calls output as [DEBUG] …. If you disable it trough the configuration file. 

## 3. SUPPORT FOR LOGICAL ENVIRONMENTS
The tools "knows" the following 3 logical environments : 
dev
tst 
prd
Thus you can have different set / versions for your sql scripts for your dev , tst and prd databases.

### 3.1. Configurability of the logical environments
You could configure the codes of your logical environments in the configuration files.  

src/bash/pgsql-runner/pgsql-runner.dev.doc-pub-host.cnf
src/bash/pgsql-runner/pgsql-runner.tst.doc-pub-host.cnf
src/bash/pgsql-runner/pgsql-runner.prd.doc-pub-host.cnf

The tools has been tested with the following naming convention:
dev_&lt;&lt;db_name&gt;&gt; - the development database
tst_&lt;&lt;db_name&gt;&gt; - the testing database 
prd_&lt;&lt;db_name&gt;&gt; - the production database. 

## 4. CONFIGURABILITY


### 4.1. Per host configurability
You could have different host configurations in your deployment packages. 

### 4.2. Database names configurability
You configure different database names for your logical environments. 

## 5. POSTGRE SQL SCRIPTS RUN
This document presents the existing features of this tool

### 5.1. Initial create db sql script
You could add or remove the initial drop create db script in the following file:
src/sql/pgsql/dev_pgsql_runner/00.create-db.pgsql

### 5.2. Running sql scripts in files alphabetic order
The sql scripts are run in numeric order. Thus if you prefix the file names with 2 or 3 digit numbers the tool with run those according to the find . &lt;&lt;sql-dir&gt;&gt; | sort -nr command order. 

### 5.3. Logging sql scripts files run output to STDOUT , STDERR and a logfile
The tool will show you the output of each sql script file run and save it to a common log file ( configurable via the tool's configuration file ) 

### 5.4. Exit on sql script command fail
Should any of your sql script commands fail the tool with exit.

### 5.5. Run the sql scripts from pre-set in the shell sql_dir
If you pre-set a shell var named sql_dir to a dir not bellow the product instance dir of the tool you could run all the sql scripts in the same alphanumeric order .

## 6. DOCUMENTATION
All the docs are stored in pdf and github md file format. 

### 6.1. README


### 6.2. DevOpsGuide
The DevOps guide provides the basic instructions on how-to setup the environment for the tool and basic PostgreSQL operations to speed up the tool's usage. 

### 6.3. Features and Functionalities doc
This document. 

