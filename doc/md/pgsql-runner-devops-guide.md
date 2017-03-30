#  pgsql-runner DEVOPS


     

## 1. INTRODUCTION


     

## 2. KEY CONCEPTS


     

## 3. INSTALLATIONS AND CONFIGURATIONS


     

### 3.1. Configure the Ubuntu repositories
Configure the Ubuntu repositories

    # creae the following repo list file
    sudo vim /etc/apt/sources.list.d/pgdg.list
    
    # add the following line in it:
    deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main

### 3.2. Add the media keys
Add the media keys as follows:

    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc |   sudo apt-key add -

### 3.3. Install the postgre package with apt
Install the postgre package with apt

    # update the apt repositories
    sudo apt-get update
    
    # install
    sudo apt-get install postgresql-9.4

### 3.4. Change the postgre user password
Configure the Ubuntu repositories

    sudo passwd postgres
    # Type a pw - add to your password manager !!!
    
    # and verify 
    su - postgres

#### 3.4.1. Start the psql client as the postgres shell user
Start the psql client as the postgres shell user
source:
http://dba.stackexchange.com/a/54253/1245

    sudo su - postgres
    # start the psql client
    psql
    
    # the psql prompt should appear as
    # postgres=# 
    
    # list the databases
    \l
    #and quit
    \q

#### 3.4.2. Create the pgsql user 
Create the pgsql user and grant him the privileges to create dbs and to connect to the postgres db. 

    # create the pgsql user to be the same as the shell user you are going to execute the scripts with ( in my case it is ysg )
    # postgres=# 
    create user ysg ;
    
    # grant him the priviledges
    grant all privileges on database postgres to ysg ;
    
    # grant him the privilege to create db's 
    ALTER USER ysg CREATEDB;
    
    # and exit
    \q

### 3.5. Install the perl modules ( optional)
Install the perl module by first installing the server development package

    
    # check which server development packages are available
    sudo apt-cache search postgres | grep -i server-dev | sort
    
    # install it
    sudo apt-get install -y postgresql-server-dev-9.6
    
    # install the DBD::Pg module
    sudo perl -MCPAN -e 'install DBD::Pg'
    
    sudo perl -MCPAN -e 'Tie::Hash::DBD'

## 4. MAINTENANCE AND OPERATIONS


     

### 4.1. RUNSTATE MANAGEMENT
 

     

#### 4.1.1. To check the status
To check the status of the postgreSql issue:

    sudo /etc/init.d/postgresql status

#### 4.1.2. To stop the postgreSql
To stop the postgreSql issues:

    sudo /etc/init.d/postgresql stop

#### 4.1.3. To start the postgreSql
To start the postgreSql issues:

    sudo /etc/init.d/postgresql start

#### 4.1.4. to check the port on which it is listening 
To check the port on which it is listening issue:

    sudo netstat -tulntp | grep -i postgres
    # tcp        0      0 127.0.0.1:5432          0.0.0.0:*               LISTEN      8095/postgres

## 5. NAMING CONVENTIONS


     

### 5.1. Dirs naming conventions
The dir structure should be logical and a person navigating to a dir should almost understand what is to be find in thre by its name .. 

    

#### 5.1.1. Root Dirs naming conventions
The root dirs and named as follows:
bin - contains the produced binaries for th project
cnf - for the configuration
dat - for the data of the app
lib - for any external libraries used
src - for the source code of the actual projects and subprojects

    

