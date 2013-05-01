Yum Repository
===
Your yet another yum repository. It is available to use for CentOS5/6 (64bit)

## Prepare
```
$ sudo curl -s -o /etc/yum.repos.d/ykenstudio.repo http://y-ken.github.com/package/ykenstudio.repo
```
## Usage
```
$ sudo yum install foo --enablerepo=ykenstudio
```
Also, you can install with URL without adding repository.
```
$ sudo yum localinstall http://y-ken.github.io/package/centos/6/x86_64/MySQL-shared-compat-5.6.11-1.el6.x86_64.rpm
```

## Last Update

* 2013/05/01  
mroonga-3.03 for MySQL-5.6.11 and MySQL-5.6.11 has added.

## Quick Guide
How to install these products with this repository.

### Toritonn (CentOS-5.x or CentOS-6.x + MySQL-5.0 + toritonn)

```
$ sudo yum -y install mecab-0.98-tritonn mecab-ipadic-2.7.0.20070801-tritonn senna MySQL-shared-5.0.87 MySQL-client-5.0.87 MySQL-server-5.0.87  MySQL-devel-5.0.87 --disablerepo=* --enablerepo=ykenstudio
```

### mroonga (CentOS-6.x + MySQL-5.6.11 + mroonga)
Custom build version of mysql-mroonga for MySQL-5.6 (Oracle Official Version) with CentOS-6.x

```
$ sudo rpm -ivh http://packages.groonga.org/centos/groonga-release-1.1.0-1.noarch.rpm
$ sudo yum install -y mecab mecab-ipadic groonga-tokenizer-mecab groonga-libs
$ sudo yum install -y MySQL-shared MySQL-shared-compat MySQL-client MySQL-server MySQL-devel --disablerepo=* --enablerepo=ykenstudio
$ sudo service mysqld start
$ sudo yum install -y mysql-mroonga --disablerepo=* --enablerepo=ykenstudio
```

### MySQL-5.6.11 (not remi, Oracle Official Version)

```
$ sudo yum install -y MySQL-shared-compat --disablerepo=* --enablerepo=ykenstudio
$ sudo yum install -y MySQL-shared MySQL-client MySQL-server MySQL-devel --disablerepo=* --enablerepo=ykenstudio
```

Also, you can install MySQL without adding repository. 

```
$ sudo yum -y localinstall http://y-ken.github.io/package/centos/6/x86_64/MySQL-shared-compat-5.6.11-1.el6.x86_64.rpm
$ sudo yum -y localinstall http://y-ken.github.io/package/centos/6/x86_64/MySQL-shared-5.6.11-1.el6.x86_64.rpm \
  http://y-ken.github.io/package/centos/6/x86_64/MySQL-server-5.6.11-1.el6.x86_64.rpm \
  http://y-ken.github.io/package/centos/6/x86_64/MySQL-devel-5.6.11-1.el6.x86_64.rpm \
  http://y-ken.github.io/package/centos/6/x86_64/MySQL-client-5.6.11-1.el6.x86_64.rpm
```

## Mirroring Info

* Tritonn (MySQL-5.0 + Senna)  
http://sourceforge.jp/projects/tritonn/releases/

* MySQL-5.6  
http://ftp.jaist.ac.jp/pub/mysql/Downloads/MySQL-5.6/

## Release Note

* 2013/05/01 updated
  * mroonga-3.03 for MySQL-5.6.11
  * MySQL-5.6.11
* 2013/03/22 updated
  * mod_rpaf-fork-0.6-5
* 2013/04/11 updated
  * mroonga-3.02 for MySQL-5.6.10
  * MySQL-5.6.10
* 2013/03/15 updated
  * mroonga-3.01 for MySQL-5.6.10
  * MySQL-5.6.10
* 2013/02/07 updated
  * mroonga-2.10 for MySQL-5.6.10
  * MySQL-5.6.10
* 2013/01/28 updated
  * mroonga-2.10 for MySQL-5.5.28
* 2012/12/03 updated
  * MySQL-5.5.28
* 2012/08/23 updated
  * mod_dosdetector-fork 
* 2012/08/22 updated
  * mod_rpaf-fork-0.6-3
