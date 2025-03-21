pipeline {
    agent any
    environment {
       Sample_creds = credentials('Demo_test_crd')
    }
       stages 
    {
        stage('checkout') {             
            steps {
                sh """
                #!/bin/bash
                sleep 5
                sudo su
                cd /opt/apache-tomcat-10.1.34/webapps
                ls
                curl -L -u "Demo_test_crd_USR:Demo_test_crd_PWD" -O "http://13.201.0.40:8082/artifactory/hello-world-war-libs-release/com/efsavage/hello-world-war/1.0.11/hello-world-war-1.0.11.war"
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
