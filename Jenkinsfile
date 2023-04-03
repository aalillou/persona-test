podTemplate() {
    node('kubeagent') {
        stage('Checkout SCM') {
            container('jnlp'){
                sh 'pwd'
                checkout scm
                this.workspace = this.pwd()
            }
        }
        stage('build') {
            container('kaniko') {
                sh 'pwd'
                this.workspace = this.pwd()
            }
        }
    }
}