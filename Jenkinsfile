#!usr/bin/env groovy

def gv
pipeline{
    agent any
    CREDENTIALS_VALUE = credentials('dockerhub-credentials')
    stages{
        stage("init"){
            steps{
                script{
                    echo "Initializing app..."
                }
            }
        }
        stage("build"){
            steps{
                script{
                    echo "Building App..."
                }
            }
        }
        stage("deploy"){
            when{
                // expression {BRANCH_NAME == ""}
                branch "main"
            }
            steps{
                script{
                    echo "Deploying app."
                    echo "Many of life failures are those who did not..."
                    echo "Value is ${CREDENTIALS_VALUE}"
                }
            }
        }
    }
    
}