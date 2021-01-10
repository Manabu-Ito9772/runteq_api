## GET 
Returns errors in json format.

### Example

#### Request
```
GET /api/v1/articles HTTP/1.1
Accept: application/json
Authorization: Bearer MyString3
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 500
Cache-Control: no-cache
Content-Length: 62
Content-Type: application/json; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: d35716ab-4bf8-429d-92b5-172939a477ec
X-Runtime: 0.027173
X-XSS-Protection: 1; mode=block

{
  "message": "Internal Server Error",
  "errors": [
    "StandardError"
  ]
}
```

## GET 
Returns errors in json format.

### Example

#### Request
```
GET /api/v1/articles/1 HTTP/1.1
Accept: application/json
Authorization: Bearer MyString4
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 404
Cache-Control: no-cache
Content-Length: 77
Content-Type: application/json; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: b2c05456-1352-4b48-8202-46650b8cd421
X-Runtime: 0.014949
X-XSS-Protection: 1; mode=block

{
  "message": "Record Not Found",
  "errors": [
    "Couldn't find Article with 'id'=1"
  ]
}
```
