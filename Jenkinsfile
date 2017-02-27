@Library('spk-jenkins-lib')

d = dockerRunner('james.mcdonald@spk.no')

echo scm
echo scm.branches
echo scm.branches[0]

d.mvn('clean package')
d.build()
d.test {
    sh 'ls -l /*.jar'
}
