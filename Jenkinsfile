@Library('spk-jenkins-lib')

d = dockerRunner('james.mcdonald@spk.no')

echo svn
echo svn.branches
echo svn.branches[0]

d.mvn('clean package')
d.build()
d.test {
    sh 'ls -l /*.jar'
}
