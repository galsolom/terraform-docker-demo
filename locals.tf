locals {
 containers_file = "local.containers.yml"
 containers_file_content = fileexists(local.containers_file) ? file(local.containers_file) : "NoSettingsFileFound: true"
 containers_config = yamldecode(local.containers_file_content)
}