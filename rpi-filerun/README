## 树莓派filerun docker镜像
```bash
docker pull j0ck1e/rpi-filerun
```

### 描述
- 基于resin/rpi-raspbian:buster底包
- php版本7.2
- 最大上传8G单文件
- 最多64个文件同时上传

### 特点
filerun程序并没有集成在镜像中，当创建容器时会从filerun官方下载最新的文件，以保持程序最新，
参考`entrypoint.sh`文件

### 已知问题
重新创建容器时会重新下载并覆盖原先的filerun程序文件，需要初始化数据库
该问题会在之后的更新中修复
