REPO=`pwd`

if [ -d $REPO/centos/6/SRPMS/ ] ; then
  cd $REPO/centos/6/SRPMS/
  wget --no-host-directories \
    --no-directories --no-parent \
    --accept '.el6.src.rpm' \
    -m http://ftp.jaist.ac.jp/pub/mysql/Downloads/MySQL-5.6/
fi

if [ -d $REPO/centos/6/x86_64/ ] ; then
  cd $REPO/centos/6/x86_64/
  wget --no-host-directories \
    --no-directories --no-parent \
    --accept '.el6.x86_64.rpm' \
    -m http://ftp.jaist.ac.jp/pub/mysql/Downloads/MySQL-5.6/
fi
