## GET /articles
Returns 401 errors.

### Example

#### Request
```
GET /api/v1/articles HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 401
Cache-Control: no-cache
Content-Length: 27
Content-Type: text/plain; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
WWW-Authenticate: Token realm="Application"
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 6c78d272-1603-45a8-9339-2108196d2aaf
X-Runtime: 0.013839
X-XSS-Protection: 1; mode=block

HTTP Token: Access denied.

```

## GET /article/{id}
Returns 401 errors.

### Example

#### Request
```
GET /api/v1/articles/1 HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 401
Cache-Control: no-cache
Content-Length: 27
Content-Type: text/plain; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
WWW-Authenticate: Token realm="Application"
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 3c67459f-9b7c-42c0-9717-cde92ec5ec4c
X-Runtime: 0.026796
X-XSS-Protection: 1; mode=block

HTTP Token: Access denied.

```

## GET articles
Returns 401 errors.

### Example

#### Request
```
GET /api/v1/user/articles HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 401
Cache-Control: no-cache
Content-Length: 27
Content-Type: text/plain; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
WWW-Authenticate: Token realm="Application"
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: c9b00551-2d51-4f31-ac5a-54cbf77c2896
X-Runtime: 0.016046
X-XSS-Protection: 1; mode=block

HTTP Token: Access denied.

```

## POST /user/articles
Returns 401 errors.

### Example

#### Request
```
POST /api/v1/user/articles HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 401
Cache-Control: no-cache
Content-Length: 27
Content-Type: text/plain; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
WWW-Authenticate: Token realm="Application"
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 907e1348-b917-42f9-bd1f-7554db02fa97
X-Runtime: 0.033123
X-XSS-Protection: 1; mode=block

HTTP Token: Access denied.

```

## PATCH /user/articles/{id}
Returns 401 errors.

### Example

#### Request
```
PATCH /api/v1/user/articles/1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 401
Cache-Control: no-cache
Content-Length: 27
Content-Type: text/plain; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
WWW-Authenticate: Token realm="Application"
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 218b48c2-c31a-4f78-b4d6-317fdfae12c5
X-Runtime: 0.029785
X-XSS-Protection: 1; mode=block

HTTP Token: Access denied.

```

## DELETE /user/articles/{id}
Returns 401 errors.

### Example

#### Request
```
DELETE /api/v1/user/articles/1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 401
Cache-Control: no-cache
Content-Length: 27
Content-Type: text/plain; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
WWW-Authenticate: Token realm="Application"
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: bb5f6651-7aaf-482e-ba58-154d4a52ba34
X-Runtime: 0.018080
X-XSS-Protection: 1; mode=block

HTTP Token: Access denied.

```
