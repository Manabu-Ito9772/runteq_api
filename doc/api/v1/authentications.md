## POST /authentications
Returns user in json format.

### Example

#### Request
```
POST /api/v1/authentication HTTP/1.1
Accept: application/json
Content-Length: 52
Content-Type: application/json
Host: www.example.com

{
  "email": "user+5@example.com",
  "password": "password"
}
```

#### Response
```
HTTP/1.1 200
AccessToken: 3711cb904dbacec436d1af797c691e9c
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 137
Content-Type: application/json; charset=utf-8
ETag: W/"3d71d118d2f41fdeef27ac953a7719a7"
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 6a2a44ee-b04c-4e76-bd8e-d0ec0150303e
X-Runtime: 0.029742
X-XSS-Protection: 1; mode=block

{
  "data": {
    "id": "1",
    "type": "user",
    "attributes": {
      "name": "MyString5",
      "email": "user+5@example.com"
    },
    "relationships": {
      "articles": {
        "data": [

        ]
      }
    }
  }
}
```

## POST /authentications
Returns user in json format.

### Example

#### Request
```
POST /api/v1/authentication HTTP/1.1
Accept: application/json
Content-Length: 58
Content-Type: application/json
Host: www.example.com

{
  "email": "user+6@example.com",
  "password": "wrong_password"
}
```

#### Response
```
HTTP/1.1 404
Cache-Control: no-cache
Content-Length: 72
Content-Type: application/json; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: faca77b5-0150-4852-95ae-b8a47d4009f8
X-Runtime: 0.029488
X-XSS-Protection: 1; mode=block

{
  "message": "Record Not Found",
  "errors": [
    "ActiveRecord::RecordNotFound"
  ]
}
```
