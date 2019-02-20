
// Engineering Documentation build and publish
pipeline {
    agent any

    stages {
        stage("Check out and build image from Dockerfile") {
            steps {
                checkout scm: [$class: 'GitSCM',
                    extensions: [[$class: 'UserExclusion', excludedUsers: 'csirocdr']]
                ]

                script {
                    def engineeringImage = docker.build("engineering:${env.BUILD_ID}")
                }
            }
        }

        stage("Replace docs output") {
            steps {
                sh "docker run engineering:${env.BUILD_ID} tar -c -C /opt/engineering/build html | tar x"
                sh "rm -fr docs"
                sh "mv html docs"
            }
        }

        stage("Synchronise with git if required") {
            steps {
                script {
                    sh '''
                        git add docs;
                        touch docs/.nojekyll;
                        git diff-index --quiet HEAD && exit 0;
                        git commit -m 'Automatic commit from CDR Jenkins';
                        git push git@github.com:ConsumerDataStandardsAustralia/engineering HEAD:${GIT_BRANCH};
                    '''
                }
            }
        }

    }
}
