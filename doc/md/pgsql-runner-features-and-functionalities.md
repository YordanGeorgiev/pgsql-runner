#  FEATURES
This document presents the existing features of this tool

## 1. DOCUMENT VIEW
The document view presents the data of the document with titles with their paragraphs, source code snippets , pictures and inline tables.


### 1.1. Navigation in doc view
The navigation in doc view is clean and intuitive, build around the idea 

### 1.2. Document titles
The titles are numbered in hierarchy with up to 7 levels ( or even more if configured so ). 
Each title might have 0 or more pagragraphs.
After each paragraph there might be 0..1 source code snippets.

### 1.3. Document view / action
The web users of the Application can view different documents ( or their parts - based on  ) in a hiearchical document format via an modern browser

#### 1.3.1. edit titles
The titles could be edited either with F2 on focused or on click. After the User updates the text and leaves the text area without pressing the Esc key. 

#### 1.3.2. edit description 
The Descrptions could be edited either with F2 on focused or on click. After the User updates the text and leaves the text area without pressing the Esc key. 

### 1.4. Content update via doc view
The web ui users can updated the data of the visible ui elements ( Name , Descrption , SrcCode )

#### 1.4.1. edit source code
The source code could be edited either with F2 on focused or on click. After the User updates the text and leaves the text area without pressing the Esc key. 
The sorce code are changes visually so that the user should understand that the source code bellow the mouse is to be editted.


### 1.5. Documents subparts retrieval
Subparts of a document, which are comprised of the hierarchy bellow a title could be retrieve by clicking on the popup of a title

### 1.6. Documents might have inline tables
Documents might have inline tables

## 2. LIST VIEW
The web users of the Application can view different documents ( or their parts ) in a list document format via an modern browser

### 2.1. Add new item in list view
A web user can add a new item by clicking on the new button, filling in the form and pressing the Save button.

Known bug -- change in the SeqId is not possible yet

### 2.2. Update existing item in list view
Update existing item in list view

Known bug -- change in the SeqId is not possible yet

## 3. PRESENTATION VIEW
The web users of the Application can view different documents ( or their parts ) in a presentation document format via an modern browser

## 4. DOCUMENTATION
This tool IS about documentation from the very start of gathering the requirements, to the modifying them into Issues.

### 4.1. Installation and configuration documentation
The tool contains the needed and tested information on the installation

### 4.2. maintenance and operational documentation
The tool contains the needed and tested information on the maintenance and operational activities

### 4.3. development documentation
The tool contains the needed and tested information on the development activities

## 5. FUNCTIONAL EXTENSIBILITY
All the major features and functionalities of the tool do have sufficient test scripts. 
Main principle during the development has been to extensively test the tool as much as possible.

### 5.1. Infinite amount of objects for modelling
Infinite amount of objects for modelling as soon as the have the following attributes - Id, Name , Description

### 5.2. multi-project support
one deployment instance of the isg-pub tool could handle multiple projects - i.e. the isg-pub is the factory producing different projects all of which do have the same end-user functionalities as its main project isg-pub.

### 5.3. creation of new project
the procedure of creation a new project is well documented and tested - the document is documented from the maintenance-41 .

### 5.4. multi-language support
the ouput documentation designed for multi-language content from the ground-up

### 5.5. multi-language interface
all the language specific interface on the site ( left menu and top menu links ) is language specific. Note URLs are not part of this interface, yet one could swith in different languages also by by utilizing the &lt;&lt;project&gt;&gt;/&lt;&lt;language&gt;&gt;/&lt;&lt;page&gt;&gt;.html url namespace , for example:
http://www.isg-pub.com/html/isg-pub/en/features.html -&gt; http://www.isg-pub.com/html/isg-pub/fi/features.html

### 5.6. support for multiple databases / applications from one application layer
One web access point could be used to access different applications / databases 

## 6. EASY DEPLOYMENT
This tool IS about documentation from the very start of gathering the requirements, to the modifying them into Issues.

### 6.1. multi-instance operation support on the same host
multiple instance of the tool including from different versions could be installed on a single host and operate simultaneously.

### 6.2. Easy packaging
A single shell command for packaging a new version of the application + data for further deployment

## 7. INTEGRATIONS
The isg-pub tool provides multiple "export to" file format 

### 7.1. Export to pdf


#### 7.1.1. Export to pdf via the UI
The web user can export a book , a document or a part of a document to a document with pdf format

#### 7.1.2. batch export to pdf
A user having the proper credentials can export the whole database into pdf document accordeing to the document structure in the left menu

### 7.2. Export to github markdown


#### 7.2.1. ui export to github markdown
The web user can export a book , a document or a part of a document to a document with a GitHub specific markdown syntax file

#### 7.2.2. batch export to github markdown
A user having the proper credentials can export the whole database into gitbhub md documents accordeing to the document structure in the left menu

### 7.3. Export to BitBucket markdown


#### 7.3.1. UI export to BitBucket markdown
A user having the proper credentials can export the whole database into bitbucket md documents accordeing to the document structure in the left menu

#### 7.3.2. bath export to BitBucket markdown
A user having the proper credentials can export the whole database into pdf document accordeing to the document structure in the left menu

### 7.4. Copy paste to edit page in major WYSISWYG wikis
The viewpdf page does provide the functionality to copy paste without any formatting a whole document or a parrt of the document. This has been tested with confluence for example. 

