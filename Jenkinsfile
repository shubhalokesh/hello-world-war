pipeline {
    agent any
       stages 
    {
        stage('checkout') {             
            steps {
                sh """
                #!/bin/bash
                sleep 60
                sudo su
                cd /opt/apache-tomcat-10.1.34/webapps
                ls
                curl -L -u "admin:${secrets.ARTIFACTORY_API_KEY}" -O "http://3.94.159.27:8082/artifactory/hello-world-war-libs-release/com/efsavage/hello-world-war/1.0.14/hello-world-war-1.0.14.war"
                pwd
                cd /opt/apache-tomcat-10.1.34/bin
                ./shutdown.sh
                sleep 3
                pwd
                
                pwd
                cd /opt/apache-tomcat-10.1.34/bin
                ./startup.sh
                sleep 3
                """ 
            }
        }
         
    }
}
