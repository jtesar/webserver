echo -n breaking web2 ...
ssh root@web2 'rm -rf /etc/httpd;chattr +i /etc'
echo done
echo -n breaking web3 ...
ssh root@web3 'chattr +i /var/www'
echo done

