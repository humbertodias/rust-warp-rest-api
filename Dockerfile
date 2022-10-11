FROM rust:alpine3.16 AS builder
RUN apk add musl-dev --no-cache
WORKDIR /src
COPY . .
RUN cargo build --release

FROM alpine:3.16
WORKDIR /app
COPY --from=builder /src/target/release/rest-api .
ENTRYPOINT [ "./rest-api" ]
EXPOSE 3030