
// Engineering Documentation build and publish
pipeline {
    agent any
    triggers {
            pollSCM('1,15,30,45 * * * *')
    }

    stages {
        stage("Check out and build image from Dockerfile") {
            steps {
                checkout scm: [
                    $class: 'GitSCM',
                    extensions: [
                        // Avoid JENKINS-36195
                        [$class: 'DisableRemotePoll'],
                        [$class: 'PathRestriction', excludedRegions: 'docs/.*', includedRegions: '' ]
                    ]
                ]

                script {
                    def engineeringImage = docker.build("engineering:${env.BUILD_ID}")
                }
            }
        }

        stage("Replace docs output") {
            steps {
                sh "git checkout githubpages"
                sh "docker run engineering:${env.BUILD_ID} tar -c -C /opt/engineering/build html | tar x"
                sh "rm -fr docs"
                sh "mv html docs"
            }
        }

        stage("Synchronise with git if required") {
            steps {
                script {
                    sh '''
                        touch docs/.nojekyll;
                        git add docs;
                        git diff-index --quiet HEAD && exit 0;
                        git commit -m 'Automatic commit from CDR Jenkins';
                        git push git@github.com:ConsumerDataStandardsAustralia/engineering HEAD:githubpages;
                    '''
                }
            }
        }

    }
}
