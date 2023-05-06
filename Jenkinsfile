@Library("jenkins-sharedLib@develop") _

podTemplate() {
    node('kubeagent') {
        stage('Checkout SCM') {
            container('jnlp'){
                sh 'pwd'
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
