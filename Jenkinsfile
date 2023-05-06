def scmBranch = scm.branches.first().getExpandedName(env.getEnvironment())
def scmBranchDetail = scmBranch.replaceAll('\\*','').replaceAll('/','_').toLowerCase()
def branchShortname = scmBranch.split('/').size() > 1 ? scmBranch.split('/')[1] : scmBranch

podTemplate() {
    node('kubeagent') {
        stage('Checkout SCM') {
            container('jnlp'){
                checkout scm
                this.workspace = this.pwd()
                echo "Branch: " + branchShortname
            }
        }
        stage('build') {
            container('kaniko') {
                sh 'pwd'
                echo "Kaniko build : " + scmBranch
            }
        }
    }
}