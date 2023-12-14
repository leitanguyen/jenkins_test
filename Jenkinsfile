
pipeline {
    agent any
    // agent {
    //     kubernetes {
    //         defaultContainer "orphan-ingest-etl"
    //         yaml podSpec {
    //             serviceAccount "etl-worker"
    //             container {
    //                 name "orphan-ingest-etl"
    //                 image "141212562619.dkr.ecr.us-west-2.amazonaws.com/fulfillment-script-execution:git-dd3a443729"
    //            }
    //         }
    //     }
    // }

    // parameters {
    //     string name: "environment", description: "Environment to ingest orphan inventory"
    // }

    stages {
        stage("Build") {
            steps {
                echo "Testing..."
                sh ""
                echo "more testing...."
            }
        }
        // stage("Print") {
        //     steps {
        //         container("orphan-ingest-etl") {
        //             sh "FULFILLMENT_ENV=${environment} FULFILLMENT_GEO=emea poetry run python fulfillment/utilities/hello_world_test_attempt.py"
        //         }
        //     }
        // }
        stage("Print") {
            steps {
                sh '''
                cd scripts
                python3 hello_world.py
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
