---
icon: lock
---

# Authentication

HawAPI is a completely **Open API** and **no authentication** is required to **QUERY** and **GET** any data.

However, this also means that we've limited what you can use.

[!ref Rate Limiting](Rate-Limiting.md)

## Create account

!!!warning Warning
At the moment this API is not accepting any registration so, only [the first tier](Rate-Limiting.md) are a available.
!!!

> [!badge variant="success" text="POST"] /api/auth/register

### Request

```json
{
  "nikcname": "lorem",
  "email": "lorem@loremipsum.com",
  "password": "MYSUPERSECRETPASSWORD"
}
```

### Response

```json
{
  "nickname": "lorem",
  "role": "DEV",
  "token": "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJodHRw
  czovL2hhd2FwaS50aGVwcm9qZWN0LmlkL2FwaS92MSIsInJvbGUiOiJERVYiLCJpc3MiOiJIYXdBUEkiLCJuaWNr
  bmFtZSI6ImxvcmVtIiwiaWF0IjoxNjcxNDk4NTQyLCJqdGkiOiIwZTdmOTg3Ni1kY2ZmLTQyNDQtYjY0OS01OTM1M2RhMjQwODgi
  LCJlbWFpbCI6ImxvcmVtQGxvcmVtaXBzdW0uY29tIn0.27ThrP_Dr1um0A7zWYioWMgZx7cPshojul-0nQ99Mck",
  "token_type": "Bearer"
}
```

## Authenticate

> [!badge variant="success" text="POST"] /api/auth/authenticate

### Request

```json
{
  "nikcname": "lorem",
  "email": "lorem@loremipsum.com",
  "password": "MYSUPERSECRETPASSWORD"
}
```

### Response

```json
{
	"nickname": "lorem",
	"email": "lorem@loremipsum.com",
	"role": "DEV",
	"token": "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJodHRw
  czovL2hhd2FwaS50aGVwcm9qZWN0LmlkL2FwaS92MSIsInJvbGUiOiJERVYiLCJpc3MiOiJIYXdBUEkiLCJuaWNr
  bmFtZSI6ImxvcmVtIiwiaWF0IjoxNjcxNDk4NTQyLCJqdGkiOiIwZTdmOTg3Ni1kY2ZmLTQyNDQtYjY0OS01OTM1M2RhMjQwODgi
  LCJlbWFpbCI6ImxvcmVtQGxvcmVtaXBzdW0uY29tIn0.27ThrP_Dr1um0A7zWYioWMgZx7cPshojul-0nQ99Mck",
	"created_at": "2022-XX-XXT22:09:02.102839",
	"updated_at": "2022-XX-XXT22:09:02.102839"
}
```

## Delete

> [!badge variant="success" text="POST"] /api/auth/delete

### Request

```json
{
  "nikcname": "lorem",
  "email": "lorem@loremipsum.com",
  "password": "MYSUPERSECRETPASSWORD"
}
```
