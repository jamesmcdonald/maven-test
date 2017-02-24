@Library('spk-jenkins-lib')

d = dockerRunner('james.mcdonald@spk.no')

d.mvn('clean package')
d.build()
d.test {
    sh 'ls -l /*.jar'
}
