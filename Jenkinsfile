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
                expression {BRANCH_NAME == "feature/auth"}
            }
            steps{
                script{
                    echo "Deploying app."
                }
            }
        }
    }
    
}