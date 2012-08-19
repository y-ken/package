#!/bin/bash

#createrepo -v -d -s sha centos/5/i386/
#repoview -u http://y-ken.github.com/package/centos/5/i386/repoview/ centos/5/i386/

createrepo -v -d -s sha centos/5/x86_64/
#createrepo -v -d -s sha centos/5/x86_64/
#repoview -u http://y-ken.github.com/package/centos/5/x86_64/repoview/ centos/5/x86_64/

createrepo -v -d centos/6/x86_64/
repoview -u http://y-ken.github.com/package/centos/6/x86_64/repoview/ centos/6/x86_64/

