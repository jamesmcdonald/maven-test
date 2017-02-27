@Library('spk-jenkins-lib')

d = dockerRunner('james.mcdonald@spk.no')

d.mvn('clean package')
d.build {
    sh 'ls -l /*.jar'
}
