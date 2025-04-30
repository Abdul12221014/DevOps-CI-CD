pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker-compose build'
      }
    }
    stage('Test') {
      steps {
        sh 'docker-compose up -d && sleep 10 && docker ps'
      }
    }
    stage('Lint') {
      steps {
        sh 'echo "Add eslint/prettier commands here"'
      }
    }
    stage('Deploy') {
      when {
        branch 'main'
      }
      steps {
        sh 'echo "Push to Render/GitHub trigger handles deploy"'
      }
    }
  }
}
