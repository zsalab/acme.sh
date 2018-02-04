diff -rupN acme.sh.orig/acme.sh acme.sh/acme.sh
--- acme.sh.orig/acme.sh	2018-02-03 21:43:30.000000000 +0100
+++ acme.sh/acme.sh	2018-02-03 23:10:27.652170044 +0100
@@ -114,6 +114,8 @@ if [ -t 1 ]; then
   __INTERACTIVE="1"
 fi
 
+[ -r /etc/default/acme-sh ] && . /etc/default/acme-sh
+
 __green() {
   if [ "$__INTERACTIVE${ACME_NO_COLOR}" = "1" ]; then
     printf '\033[1;31;32m'
