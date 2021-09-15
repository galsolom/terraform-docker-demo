# terraform docker demo

## requirements
* wsl2/linux (preferred over windows to avoid common crlf/lf issues)
* terraform cli
* docker 

# Usage

clone this repo
cd terraform-docker-demo
### run commands

```
terraform init
```

### below command requires approval (typing 'yes')
```
terraform apply 
```
docker ps should show the below:
```
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                  NAMES
8cdf2757a189   dd34e67e3371   "/docker-entrypoint.…"   2 seconds ago    Up 1 second     0.0.0.0:8000->80/tcp   test
3fa551e71992   dd34e67e3371   "/docker-entrypoint.…"   29 seconds ago   Up 27 seconds   0.0.0.0:8082->80/tcp   tenant2
6bfacc774055   dd34e67e3371   "/docker-entrypoint.…"   29 seconds ago   Up 27 seconds   0.0.0.0:8083->80/tcp   tenant3
2e867f2c3bae   dd34e67e3371   "/docker-entrypoint.…"   29 seconds ago   Up 27 seconds   0.0.0.0:8081->80/tcp   tenant1
```