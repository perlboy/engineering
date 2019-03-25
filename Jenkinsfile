
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
    }
}
