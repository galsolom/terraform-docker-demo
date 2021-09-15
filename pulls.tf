resource "docker_image" "nginx" {
  name = "nginx:latest"
}
resource "docker_image" "redis" {
  name = "redis:alpine3.14"
}