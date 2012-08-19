rpm
===

yum repository

Install
------
    curl -o /etc/yum.repos.d/ykenstudio.repo https://raw.github.com/y-ken/rpm/master/ykenstudio.repo

Usage
------

    $ yum install foo --enablerepo=ykenstudio

Quick Guide
------
How to install these products with this repository.

### toritonn (CentOS-5.x or 6.x + MySQL-5.0 + toritonn)

    $ sudo yum -y install mecab-0.98-tritonn mecab-ipadic-2.7.0.20070801-tritonn senna MySQL-shared-5.0.87 MySQL-client-5.0.87 MySQL-server-5.0.87  MySQL-devel-5.0.87 --disablerepo=* --enablerepo=ykenstudio

### mroonga (CentOS-6.x + MySQL-5.5 + mroonga)
Custom build version of mysql-mroonga for MySQL-5.5 with CentOS-6.x

    $ sudo rpm -ivh http://packages.groonga.org/centos/groonga-release-1.1.0-0.noarch.rpm
    $ sudo yum install -y groonga-tokenizer-mecab groonga-libs
    $ sudo yum install -y MySQL-shared MySQL-client MySQL-server MySQL-devel --disablerepo=* --enablerepo=ykenstudio
    $ sudo service mysqld start
    $ sudo yum install -y mysql-mroonga --disablerepo=* --enablerepo=ykenstudio

### MySQL-5.5 (not remi, Oracle Official Version)

    $ sudo yum install -y MySQL-shared MySQL-client MySQL-server MySQL-devel --disablerepo=* --enablerepo=ykenstudio

Mirroring Info
------

- Tritonn (MySQL-5.0 + Senna) 
 - http://sourceforge.jp/projects/tritonn/releases/

- MySQL-5.5
 - http://ftp.jaist.ac.jp/pub/mysql/Downloads/MySQL-5.5/

