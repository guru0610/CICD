// Jenkinsfile
String credentialsId = 'azurecred'

try {
  stage('checkout') {
    node {
      cleanWs()
      checkout scm
    }
  }

  // Run terraform init
  stage('init') {
    node {

      withCredentials([azureServicePrincipal('azurecred')]) 
       {
        ansiColor('xterm') {
          powershell 'terraform init'
        }
      }
    }
  }

  // Run terraform plan
  stage('plan') {
    node {
      withCredentials([azureServicePrincipal('azurecred')]) 
        {
        ansiColor('xterm') {
          powershell 'terraform plan'
        }
      }
    }
  }

  if (env.BRANCH_NAME == 'master') {

    // Run terraform apply
    stage('apply') {
      node {
        withCredentials([azureServicePrincipal('azurecred')]) { 
          ansiColor('xterm') {
            powershell 'terraform apply -auto-approve'
          }
        }
      }
    }

    // Run terraform show
    stage('show') {
      node {
        withCredentials([azureServicePrincipal('azurecred')]) { 
          ansiColor('xterm') {
            powershell 'terraform show'
          }
        }
      }
    }
  }
  currentBuild.result = 'SUCCESS'
}
catch (org.jenkinsci.plugins.workflow.steps.FlowInterruptedException flowError) {
  currentBuild.result = 'ABORTED'
}
catch (err) {
  currentBuild.result = 'FAILURE'
  throw err
}
finally {
  if (currentBuild.result == 'SUCCESS') {
    currentBuild.result = 'SUCCESS'
  }
}
