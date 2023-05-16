@Library("jenkins-sharedLib@develop") _

node('persona-agent') {
    skipDefaultCheckout()
    stage('Checkout git') {
        container('jnlp'){
            lib.gitCheckout()

            echo "-------------------"
            echo lib.getHeadsOrigin()
            echo "-------------------"

            echo "-------------------"
            echo lib.gitBranchName()
            echo "-------------------"

            echo "env.BRANCH_NAME: ${env.BRANCH_NAME}"
            echo "env.GIT_BRANCH: ${env.GIT_BRANCH}"


            //sh 'printenv'
        }
    }
}
