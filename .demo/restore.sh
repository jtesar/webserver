ssh root@web2 'chattr -i /etc'
ssh root@web3 'chattr -i /var/www'
ansible-playbook cleanup.yaml
