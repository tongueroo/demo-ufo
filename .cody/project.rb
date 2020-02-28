github_url("https://github.com/tongueroo/demo-ufo.git")
linux_image("aws/codebuild/amazonlinux2-x86_64-standard:2.0")
environment_variables(
  ECS_SERVICE: @ecs_service, # IE: demo-web-development
  DOCKER_CONTAINER: @docker_container, # IE: ecs-demo-web-web
)