# warp-rest-api

Code for the LogRocket [article](https://blog.logrocket.com/creating-a-rest-api-in-rust-with-warp/)

# Summarize

```sh
cargo run
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