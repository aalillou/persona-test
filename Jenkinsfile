@Library("jenkins-sharedLib@master") _

def scmBranch = scm.branches.first().getExpandedName(env.getEnvironment())
def scmBranchDetail = scmBranch.replaceAll('\\*','').replaceAll('/','_').toLowerCase()
def branchShortname = scmBranch.split('/').size() > 1 ? scmBranch.split('/')[1] : scmBranch

node('kubeagent') {
    skipDefaultCheckout()

    stage('kaniko') {
        container('kaniko') {
            echo "kaniko no checkout"
            this.workspace = this.pwd()
        }
    }
    stage('Checkout git') {
        container('jnlp'){
            // checkout scm
            lib.gitCheckout()

            echo "-------------------"
            echo lib.gitBranchName()
            echo "-------------------"

            echo "scmBranch : " + scmBranch
            echo "branchShortname: " + branchShortname

            echo "env.BRANCH_NAME: ${env.BRANCH_NAME}"
            echo "env.GIT_BRANCH: ${env.GIT_BRANCH}"

            sh 'git ls-remote --heads origin | grep $(git rev-parse HEAD) | cut -d / -f 3'

            sh 'printenv'
        }
    }
}
