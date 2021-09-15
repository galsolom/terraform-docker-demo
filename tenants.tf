resource "docker_container" "tenants"{
    for_each = {for container in local.containers_config.container: container.name => container}
    image = docker_image.nginx.latest
    name = each.key
    restart = "always"
    
    ports {
        external = each.value.port
        internal = 80
        ip = "0.0.0.0"
        protocol = "tcp"
    }

    mounts {
        type = "bind"
        read_only = true
        source = "/etc/localtime"
        target = "/etc/localtime"
    }
    mounts {
        type = "bind"
        read_only = true
        source = "/etc/timezone"
        target = "/etc/timezone"
    }

}
