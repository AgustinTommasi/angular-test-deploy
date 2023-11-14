pipeline {
  agent {
    docker {
      image 'node'
      args '''RUN mkdir -p /app

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build --prod'''
    }

  }
  stages {
    stage('Stage 1') {
      steps {
        echo 'Running... SystemArt'
      }
    }

    stage('Stage 2 ') {
      steps {
        echo 'Running... SystemArt v2'
      }
    }

  }
}