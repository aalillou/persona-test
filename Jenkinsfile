@Library("jenkins-sharedLib@develop") _

import persona.devops.Git
import persona.devops.Gradle
import persona.devops.Docker
import persona.devops.Version

def scm = new Git(pipeline: this)
def gradle = new Gradle(pipeline: this)
def docker = new Docker(pipeline: this)

node('persona-agent') {
    skipDefaultCheckout()
    scm.checkout()

    echo "-------------------"
    echo "BranchName:" + scm.branchName()
    echo "env.BRANCH_NAME: ${env.BRANCH_NAME}"
    echo "-------------------"

}
