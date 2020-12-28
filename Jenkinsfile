pipeline{
    agent any
    
      parameters { choice(name: 'Environment', choices: ['staging', 'preprod', 'prod'], description: 'Profile needs to be used while executing test') }
      
    stages{
        stage ('Clean WorkSpace Directory'){
            steps {
                //define the single or multiple step
                bat 'echo CleanUp Stage'
                cleanWs notFailBuild: true
            }
        }
        stage ('Git CheckOut'){
            steps {
               //define the single or multiple step
                bat 'echo Git Checkout'
                checkout([$class: 'GitSCM', branches: [[name: '**']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/rahulrathore44/KarateFrameworkTutorial.git']]])
            }
            
        }
        stage ('Restore Packages'){
            steps {
                //define the single or multiple step
                bat 'echo Restore Package'
            }
        }
        stage ('Build'){
            steps {
               //define the single or multiple step
                bat 'echo Build'
                bat 'mvn clean compile'
                
            }
        }
        stage ('Deploy'){
            steps {
                bat 'echo Deploying the application..'
            }
        }
        stage ('Run the Test') {
            steps {
                 //define the single or multiple step
                bat 'echo Test Execution Started'
                bat 'mvn -P %Environment% test'
            }
        }
    }
    post {
        always {
            junit 'target/surefire-reports/*.xml'
            cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'target/surefire-reports', pendingStepsNumber: -1, reportTitle: 'Karate Test Execution', skipEmptyJSONFiles: true, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
        }

    }
}