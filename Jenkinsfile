
pipeline {
    agent any

    stages {
        stage("Build") {
            steps {
                echo "Testing..."
                sh ''''''
                echo "more testing...."
            }
        }

        stage("Print") {
            steps {
                sh '''
                python3 scripts/hello_world.py
                '''
            }
        }
        stage("Deliver") {
            steps {
                echo "Testing..."
                echo "Delivering slay"
            }
        }
    }

}
