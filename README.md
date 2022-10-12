# warp-rest-api

Code for the LogRocket [article](https://blog.logrocket.com/creating-a-rest-api-in-rust-with-warp/)

# Summarize

[Rust](https://www.rust-lang.org/tools/install) install
```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Run
```sh
cargo run
```

or

```sh
curl -sL https://github.com/humbertodias/rust-warp-rest-api/releases/download/v0.1/rust-warp-rest-api_v0.1_x86_64-unknown-linux-musl.tar.gz | tar xz && ./rest-api
```

POST
```sh
curl --location --request POST 'localhost:3030/v1/groceries' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain' \
--data-raw '{
"name": "apple",
"quantity": 3
}'
```

UPDATE
```sh
curl --location --request PUT 'localhost:3030/v1/groceries' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain' \
--data-raw '{
"name": "apple",
"quantity": 5
}'
```

GET
```sh
curl --location --request GET 'localhost:3030/v1/groceries' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain'
```

DELETE
```sh
curl --location --request DELETE 'localhost:3030/v1/groceries' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain' \
--data-raw '{
"name": "apple"
}'
```

## Docker

Build
```sh
docker build . -t rest-api
```

Run
```sh
docker run -p 3030:3030 rest-api
```

Image
```
docker images
```

```
REPOSITORY               TAG                                     IMAGE ID       CREATED         SIZE
rest-api                 latest                                  cdf155a5d3b6   2 minutes ago   13MB
```

# Ref

* [rust-wrap](https://github.com/seanmonstar/warp)
* [rust-gha-release](https://github.com/marketplace/actions/rust-release-binary)