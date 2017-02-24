@Library('spk-jenkins-lib')

d = dockerRunner('james.mcdonald@spk.no')

d.mvn('clean test')
d.build()
d.test {
    sh 'ls -l /*.jar'
}
