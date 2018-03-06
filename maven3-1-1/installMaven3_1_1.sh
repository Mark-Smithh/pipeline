#wget http://mirrors.viethosting.vn/apache/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.tar.gz
#tar -xf /apache-maven-3.1.1-bin.tar.gz  -C /usr/local
cp -r apache-maven-3.1.1 /usr/local
cd /usr/local
rm -f maven
ln -s apache-maven-3.1.1 maven
rm -f /etc/profile.d/maven.sh
echo "M2_HOME=/usr/local/maven" >> ~/.bashrc
#echo "PATH=${M2_HOME}/bin:${PATH}" >> ~/.bashrc
#echo "PATH=$PATH:${M2_HOME}/bin" >> ~/.bashrc
