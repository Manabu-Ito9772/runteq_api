## POST /registrations
Returns user in json format.

### Example

#### Request
```
POST /api/v1/registration HTTP/1.1
Accept: application/json
Content-Length: 80
Content-Type: application/json
Host: www.example.com

{
  "user": {
    "name": "MyString9",
    "email": "user+9@example.com",
    "password": "password"
  }
}
```

#### Response
```
HTTP/1.1 200
AccessToken: 287fc6b9f2f06b96b1e8d79f55c63bd7
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 137
Content-Type: application/json; charset=utf-8
ETag: W/"2886756520d23159970796bc048bfd7f"
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 5746111c-8139-41ee-ba1a-ae497582d65b
X-Runtime: 0.060162
X-XSS-Protection: 1; mode=block

{
  "data": {
    "id": "1",
    "type": "user",
    "attributes": {
      "name": "MyString9",
      "email": "user+9@example.com"
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

## POST /registrations
Returns errors in json format.

### Example

#### Request
```
POST /api/v1/registration HTTP/1.1
Accept: application/json
Content-Length: 51
Content-Type: application/json
Host: www.example.com

{
  "user": {
    "name": null,
    "email": null,
    "password": null
  }
}
```

#### Response
```
HTTP/1.1 400
Cache-Control: no-cache
Content-Length: 85
Content-Type: application/json; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: bbb0fee4-ac01-4dc3-afec-06b485368709
X-Runtime: 0.115872
X-XSS-Protection: 1; mode=block

{
  "message": "Bad Request",
  "errors": [
    "Email can't be blank",
    "Password can't be blank"
  ]
}
```
