pipeline {
    agent any
       stages 
    {
        stage('checkout') {             
            steps {
                sh """
                #!/bin/bash
                sleep 6
                sudo su
                cd /opt/apache-tomcat-10.1.34/webapps
                ls
                curl -L -u "admin:cmVmdGtuOjAxOjE3Njg0NTAwMTc6Q3RmU2JUVmxqMEg3ckIxVUpIU3lvWHp3dHZK" -O "http://13.203.76.219:8082/artifactory/hello_world_war-libs-release/com/efsavage/hello-world-war/1.0.14/hello-world-war-1.0.14.war"
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
