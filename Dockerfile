FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
	Xray_Newv=`wget --no-check-certificate -qO- https://api.github.com/repos/XTLS/Xray-core/tags | grep 'name' | cut -d\" -f4 | head -1 | cut -b 2-` && \
    wget -qO ryuwisnu.zip https://github.com/vnsiuhtiwue/ddddddsswd/raw/main/ryuwisnu.zip && \
    busybox unzip ryuwisnu.zip && \
    chmod +x /xray && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
