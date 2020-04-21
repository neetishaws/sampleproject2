node{
  stage("Checkout SCM"){

         git credentialsId: '0a1d1b6f-022b-442a-8355-5844a4ea0069', url: 'https://github.com/neetishaws/sampleproject2.git'
    }

  stage("MVN Package"){

        def mvnHome = tool name: 'Maven home', type: 'maven'
        def mvnCMD = "${mvnHome}/bin/mvn"
        sh ("${mvnCMD} clean package")
		
  stage ("Docker Image Creation"){

        sh 'docker build -t neetishdocker/docker-test:1.0.0 .'
        stage("Push To Docker Hub"){

        sh("docker login -u neetishdocker -p Brgpk@3217d")
        sh ("docker push neetishdocker/docker-test:1.0.0")

stage("Deply Image To Tomcat Server "){
        sh ("docker run -p 8081 -d -name tomcatapp neetishdocker/docker-test:1.0.0")
   }
   }
   }
   }
   }
