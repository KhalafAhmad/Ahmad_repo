FROM alpine
RUN apk update \
&& apk add openrc nginx \
&& apk add nano \
&& openrc
RUN touch /run/openrc/softlevel \
&& rc-update add nginx default \
&& mkdir -p /var/www/html/khalaf-web
WORKDIR /var/www/html/khalaf-web
COPY index.html .
COPY image3.jpeg .
WORKDIR /etc/nginx/http.d
COPY khalaf-web.conf .
RUN rm default.conf
ENV Name="Ahmad Adnan Khaleel khalaf"
ENV Company="Ubitc Altra"
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


