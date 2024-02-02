ssh root@web2 'rm -rf /etc/httpd;chattr +i /etc'
ssh root@web3 'chattr +i /var/www'
