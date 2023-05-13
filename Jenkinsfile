@Library("jenkins-sharedLib@master") _

def scmBranch = scm.branches.first().getExpandedName(env.getEnvironment())
def scmBranchDetail = scmBranch.replaceAll('\\*','').replaceAll('/','_').toLowerCase()
def branchShortname = scmBranch.split('/').size() > 1 ? scmBranch.split('/')[1] : scmBranch

node('kubeagent') {
    skipDefaultCheckout()
    stage('Checkout git') {
        container('jnlp'){
            lib.gitCheckout()
            def b = lib.gitBranchName()

            echo "scm branch : " + b.branch
            echo "scm detail: " + b.detail

            echo "env.BRANCH_NAME: ${env.BRANCH_NAME}"
            echo "env.GIT_BRANCH: ${env.GIT_BRANCH}"

            sh 'git ls-remote --heads origin | grep $(git rev-parse HEAD) | cut -d / -f 3'

            sh 'printenv'
        }
    }
}
