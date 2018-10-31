# Docker frp
Docker image for [frp](https://github.com/enhay/docekr-frp/), based on Alpine Linux.

Current frp version: v0.21.0

## How to use
Run frp server:
```shell
docker run -d -p 7000:7000 --name=frps --restart=always -v /path/to/config:/etc/frp enhay/frp --model=frps  --config=/etc/frp/frps.ini
```

Run frp client:
```shell
docker run -d --name=frpc --restart=always -v /path/to/config:/etc/frp enhay/frp frpc --model=frpc  --config=/etc/frp/frpc.ini
```
