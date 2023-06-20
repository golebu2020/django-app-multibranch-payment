#!usr/bin/env groovy

def gv
pipeline{
    agent any
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
                }
            }
        }
    }
    
}