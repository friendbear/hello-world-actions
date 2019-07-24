workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}


action "Hello World" {
  uses = "./action-a"
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}



workflow "Lint Dockerfiles" {
  on = "push"
  resolves = ["Lint all the files"]
}

action "Lint all the files" {
  uses = "docker://cdssnc/docker-lint"
}

