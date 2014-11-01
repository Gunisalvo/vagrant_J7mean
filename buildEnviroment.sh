 #!/bin/bash
jdk=./modules/java/files/jdk-7u71-linux-x64.tar.gz
if [ ! -e "$jdk" ]; then
    echo "downloading JDK"
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u71-b13/jdk-7u71-linux-x64.tar.gz
 	mkdir modules/java/files/
	mv jdk-7u71-linux-x64.tar.gz modules/java/files/
fi 

mongodb=./modules/mongodb
if [ ! -e "$mongodb" ]; then
    echo "puppet formula download mongodb"
 	puppet module install --modulepath modules puppetlabs-mongodb
fi

maven=./modules/maven
if [ ! -e "$maven" ]; then
    echo "puppet formula download maven"
	puppet module install --modulepath modules maestrodev/maven
fi

nodejs=./modules/nodejs
if [ ! -e "$nodejs" ]; then
    echo "puppet formula download nodejs"
	puppet module install --modulepath modules willdurand-nodejs
fi

vagrant up
vagrant provision
echo "done! type: vagrant ssh"
#end