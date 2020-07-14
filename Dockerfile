FROM alpine:3.9
# registry.cn-beijing.aliyuncs.com/wa/env:base

RUN apk add --update ca-certificates tzdata wkhtmltopdf imagemagick imagemagick-libs
ENV TZ=Asia/Shanghai

RUN mkdir -p /usr/share/fonts/TTF
# 黑体
ADD ./hack/simhei.ttf /usr/share/fonts/TTF/
# 宋体
ADD ./hack/simsun.ttf /usr/share/fonts/TTF/
# 华文中宋
ADD ./hack/huawenzhongsong.ttf /usr/share/fonts/TTF/
# 华文行楷
ADD ./hack/huawenxingkai.ttf /usr/share/fonts/TTF/
# 仿宋
ADD ./hack/simfang.ttf /usr/share/fonts/TTF/
