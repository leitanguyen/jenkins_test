slack_channel = '#celect-fulfillment-alerts'
job_detail = "${env.BUILD_URL}console"

pipeline {

    agent {
        kubernetes {
            defaultContainer "orphan-ingest-etl"
            yaml podSpec {
                serviceAccount "etl-worker"
                container {
                    name "orphan-ingest-etl"
                    image "141212562619.dkr.ecr.us-west-2.amazonaws.com/fulfillment-script-execution:git-dd3a443729"
               }
            }
        }
    }

    parameters {
        string name: "environment", description: "Environment to ingest orphan inventory"
    }

    stages {
        stage("Print") {
            steps {
                container("orphan-ingest-etl") {
                    sh "FULFILLMENT_ENV=${environment} FULFILLMENT_GEO=emea poetry run python fulfillment/utilities/hello_world_test_attempt.py"
                }
            }
        }
    }

}
