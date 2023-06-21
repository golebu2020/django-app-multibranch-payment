#!usr/bin/env groovy

def gv
pipeline{
    agent any

    tools{
        maven "Maven"
    }

    environment{
         CREDENTIALS_VALUE = credentials('dockerhub-credentials')
    }

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
                    withCredentials([usernamePassword(credentialsId: 'github-credentials', passwordVariable: 'PASS', usernameVariable: 'USR')]){
                        echo "${PASS} || ${USR}"
                    }
               
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
                    env.ENV = input message: "Select the environment to deploy to",
                    ok:"Done",
                    parameters: [choice(name: 'ENVDONE', choices: ['dev', 'staging', 'prod'], description: '')]
                    echo "Deploying app.== ${ENVDONE}"
                    echo "Many of life failures are those who did not..."
                    echo "Value is $CREDENTIALS_VALUE"
                }
            }
        }
    }
    
}