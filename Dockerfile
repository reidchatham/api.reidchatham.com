FROM swift:latest
MAINTAINER Reid Chatham
LABEL Description="API for my website."

EXPOSE 80

RUN mkdir /root/api.reidchatham.com

ADD Sources /root/api.reidchatham.com
ADD Package.swift /root/api.reidchatham.com
ADD .swift-version /root/api.reidchatham.com

RUN cd /root/api.reidchatham.com && swift build

USER root
#CMD ["/root/api.reidchatham.com/.build/debug/api.reidchatham.com"]
CMD [ "sh", "-c", "cd /root/api.reidchatham.com && .build/debug/api.reidchatham.com" ]
