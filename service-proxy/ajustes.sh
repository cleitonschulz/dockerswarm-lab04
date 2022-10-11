
ORIGINAL=/etc/nginx/conf.d/default.conf
export URL=`cat /var/run/secrets/opa`
cat $ORIGINAL | /bin/sed "s,^server_name.*,server_name ${URL};,g" >$ORIGINAL-temp
cat $ORIGINAL-temp > $ORIGINAL
rm -Rf $ORIGINAL-temp
nginx -g 'daemon off;'
