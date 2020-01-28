# Build image
FROM swift:5.0 as builder
RUN apt-get -qq update && apt-get -q -y install \
  libssl-dev zlib1g-dev \
  tzdata \
  && rm -r /var/lib/apt/lists/*
WORKDIR /app
COPY . /app
RUN mkdir -p /build/lib && cp -R /usr/lib/swift/linux/*.so /build/lib
RUN swift build -c release && mv `swift build -c release --show-bin-path` /build/bin

# Production image
FROM ubuntu:16.04
MAINTAINER Reid Chatham
LABEL Description="API for my website."
RUN apt-get -qq update && apt-get install -y \
  libicu55 libxml2 libbsd0 libcurl3 libatomic1 \
  tzdata \
  && rm -r /var/lib/apt/lists/*
WORKDIR /app
COPY --from=builder /app/Resources/ /app/Resources/
COPY --from=builder /build/bin/Run .
#COPY --from=builder /build/lib/* /usr/lib/
EXPOSE 443
ENTRYPOINT ./Run serve -e prod -b 0.0.0.0
