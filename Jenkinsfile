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
                    echo "Triggering Multibranch Automatic Building...for the branch ${BRANCH_NAME}"
                }
            }
        }
        stage("deploy"){
            steps{
                script{
                    echo "Deploying app."
                }
            }
        }
    }
    
}