@Library("jenkins-sharedLib@develop") _

def getHeadsOrigin () {
    return sh(script: "git ls-remote --heads origin | grep \$(git rev-parse HEAD) | awk '{print \$2}' | sort -r -V | sed 's@refs/heads/@@'", returnStdout: true,).trim()
}

node('persona-agent') {
    skipDefaultCheckout()
    stage('Checkout git') {
        container('jnlp'){
            lib.gitCheckout()

            echo "-------------------"
            echo "BranchName:" + lib.gitBranchName()
            echo "-------------------"

            echo "env.BRANCH_NAME: ${env.BRANCH_NAME}"
            echo "env.GIT_BRANCH: ${env.GIT_BRANCH}"


            //sh 'printenv'
        }
    }
}
