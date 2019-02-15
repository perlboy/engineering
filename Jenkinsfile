

node {
    checkout scm
    def engineeringImage = docker.build("engineering:${env.BUILD_ID}")
}
