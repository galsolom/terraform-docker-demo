# Create a container
resource "docker_container" "test" {
  image = docker_image.nginx.latest
  name  = var.container_name
  restart = "always"

  ports {
    external = 8000
    internal = 80
    ip = "0.0.0.0"
    protocol = "tcp"
  }

   mounts {
        target = "/etc/timezone"
        source = "/etc/timezone"
        type = "bind"
        read_only = true
    }
    mounts {
        target = "/etc/localtime"
        source = "/etc/localtime"
        type = "bind"
        read_only = true
    }
}

