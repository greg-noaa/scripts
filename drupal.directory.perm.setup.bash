#!/bin/bash -x
echo 'test'

chmod o-rwx drupalsiterootdir/ -R
chmod g-w drupalsiterootdir/ -R
chmod g+w drupalsiterootdir/sites/default/files/ -R
chmod g+w drupalsiterootdir-files/ -R
chown myusername:apache drupalsiterootdir/ -R
chown myusername:apache drupalsiterootdir-files/ -R
