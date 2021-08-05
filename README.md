# 介绍
- librdkafka源码自动化编译

# 用法
```shell
$ cd docker/

# 修改DORKERFILE内git拉取的分支，决定编译哪个版本的librdkafka
# resource下放置的是自定义yum源配置文件
$ vim Dockerfile

# 确认DORKERFILE无误后，即可编译
$ sh build.sh

# 完成后，将镜像中编译好的文件取出，在/librdkafka/build目录下

# 注意修改/librdkafka/build/lib/pkgconfig/*.pc文件内，所有与路径相关的信息
```
