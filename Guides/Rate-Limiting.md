---
label: Rate Limiting
icon: clock
order: 1
---

# Rate Limiting

Each API plan comes with a requests limiter. Every API call you make costs a request

|   Tier    |   Limits   | Price  | Auth  | Permissions |
| :-------: | :--------: | :----: | :---: | :---------: |
| ANONYMOUS | 4 req/60s  | `FREE` |  ---  |    `GET`    |
|   BASIC   | 6 req/60s  | `FREE` | `JWT` |    `GET`    |
|    DEV    | 12 req/60s |  ---   | `JWT` |    `GET`    |

[!ref Authentication](Authentication.md)

!!!info Info
Please note that the API access token on any tier above ANONYMOUS will only define how many requests your application can call per minute and all limit will be defined using the user IP address.
!!!

When you are on the **ANONYMOUS** tier and your quota is used up, the API will respond with the error code **429 Too Many Requests** and no more calls can be made until your quota resets.

## Controlling usage

You have complete control over your quota by looking at the the API response headers that appear with every response. These response headers are:

### Remaining requests

```
HTTP/1.1 200
X-Rate-Limit-Remaining: 11

...

HTTP/1.1 200
X-Rate-Limit-Remaining: 1
```

### Rejected request

```
HTTP/1.1 200
X-Rate-Limit-Remaining: 1

...

HTTP/1.1 429
X-Rate-Limit-Retry-After-Seconds: 583
```

!!!info Info
The **HawAPI** is Open Source. \
If, for some reason, you need more/unlimited requests, i encourage you to host you own server/api.

Check our [Github](https://github.com/HawAPI) page.
!!!
