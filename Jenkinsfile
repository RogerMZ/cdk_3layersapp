pipeline {
  agent any
  stages {
    stage('Inicio_Enviroment') {
      steps {
        echo 'Iniciando construccion de proyecto'
        sh 'env'
      }
    }

    stage('docker Env') {
      parallel {
        stage('docker Env') {
          steps {
            sh 'docker -v'
          }
        }

        stage('Images from docker') {
          steps {
            sh 'docker images'
          }
        }

      }
    }

    stage('Build') {
      steps {
        sh 'cat versionImage | xargs ./scripts/build.sh'
      }
    }

    stage('Run Container') {
      steps {
        sh '''docker stop proyapi || true
docker rm proyapi || true
docker run --name proyapi -itd -p 3001:3000 rogermz/app3layer:3.1 '''
        sh 'docker ps'
      }
    }

  }
}