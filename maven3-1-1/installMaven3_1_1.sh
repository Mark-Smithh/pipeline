#wget http://mirrors.viethosting.vn/apache/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.tar.gz
#tar -xf /apache-maven-3.1.1-bin.tar.gz  -C /usr/local
echo 1
cp -r apache-maven-3.1.1 /usr/local
echo 2
cd /usr/local
echo 3
rm -f maven
echo 4
ln -s apache-maven-3.1.1 maven
echo 5
rm -f /etc/profile.d/maven.sh
echo 6
echo "M2_HOME=/usr/local/maven" >> ~/.bashrc
#echo "PATH=${M2_HOME}/bin:${PATH}" >> ~/.bashrc
#echo "PATH=$PATH:${M2_HOME}/bin" >> ~/.bashrc
