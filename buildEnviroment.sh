 #!/bin/bash
 wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u71-b13/jdk-7u71-linux-x64.tar.gz
 mkdir modules/java/files/
 mv jdk-7u71-linux-x64.tar.gz modules/java/files/
 puppet module install --modulepath modules puppetlabs-mongodb
 puppet module install --modulepath modules maestrodev/maven
 puppet module install --modulepath modules willdurand-nodejs
 vagrant up
 vagrant provision
 echo 'done! type: vagrant ssh'
 #end