@Library("jenkins-sharedLib@master") _

def scmBranch = scm.branches.first().getExpandedName(env.getEnvironment())
def scmBranchDetail = scmBranch.replaceAll('\\*','').replaceAll('/','_').toLowerCase()
def branchShortname = scmBranch.split('/').size() > 1 ? scmBranch.split('/')[1] : scmBranch

node('kubeagent') {
    skipDefaultCheckout()
    stage('Checkout git') {
        container('jnlp'){
            lib.gitCheckout()

            echo "-------------------"
            echo lib.gitBranchName()
            echo "-------------------"

            echo "env.BRANCH_NAME: ${env.BRANCH_NAME}"
            echo "env.GIT_BRANCH: ${env.GIT_BRANCH}"


            //sh 'printenv'
        }
    }
}
