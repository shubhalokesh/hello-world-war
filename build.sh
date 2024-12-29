ls 
if [ -d hello-world-war ]
then
rm -rf *
fi
git clone https://github.com/shubhalokesh/hello-world-war.git
cd hello-warld-war
mvn clean package
