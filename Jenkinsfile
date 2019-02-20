
// Engineering Documentation build and publish
pipeline {
    agent any

    stages {
        stage("Check out and build image from Dockerfile") {
            steps {
                checkout scm
                def engineeringImage = docker.build("engineering:${env.BUILD_ID}")
            }
        }

        stage("Replace docs output") {
            steps {
                sh "docker run engineering:${env.BUILD_ID} tar -c -C /opt/engineering/build html | tar x"
                sh "rm -fr docs"
                sh "mv html docs"
            }
        }

        stage("Synchronise with git") {
            steps {
                // Now we have extracted on top of the original html directory, let's mass add (and delete in html)
                sh "git add docs"
                // Now do an automatic commit
                sh "git commit -m 'Automatic commit from CDR Jenkins'"
                // And push
                sh "git push"
            }
        }

    }
}
