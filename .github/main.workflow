workflow "New workflow" {
  on = "push"
  resolves = ["maven"]
}

action "maven" {
  uses = "docker://maven"
  args = "mvn clean test"
}
