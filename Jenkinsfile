@Library('jenkins-lib')

def d = dockerRunner('james@test')

d.mvn 'clean package'
d.build {
    sh 'ls -l /*.jar'
}
