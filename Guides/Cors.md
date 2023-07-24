---
icon: shield
---

The **HawAPI** project supports cross-origin HTTP requests which is commonly referred as **CORS**. This means that you can call API resources from any browser.

[CORS :icon-link-external:](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing){target="\_blank"} is a proposed standard for allowing your web browser and a web server to negotiate and allow requests to be made across domain contexts. **CORS** is currently supported in modern Chrome, Firefox, Safari, and Internet Explorer (10+) web browsers.

You don’t need to do anything special to use **CORS** with JavaScript in a modern browser. Your web browser and our servers will automatically negotiate the cross-origin request. For example, to make a `GET` request, you’d make your request just like you were performing it within the context of your own domain.

### Example

Fetching all [actors](/API/Actors.md)

```js
fetch("{{url}}/{{api_version}}/actors")
  .then((response) => response.json())
  .then((data) => console.log(data));
```

## Allowed Methods

Only `GET` method is allowed for all tiers (with [limitations](/Guides/Rate-Limiting.md)).

|  Method  |        Tier         | Auth  |
| :------: | :-----------------: | :---: |
|  `GET`   |        `ALL`        |  ---  |
|  `POST`  | `MAINTAINER, ADMIN` | `JWT` |
| `PATCH`  | `MAINTAINER, ADMIN` | `JWT` |
| `DELETE` | `MAINTAINER, ADMIN` | `JWT` |

## Allowed Headers

|     Header     |    Methods    |                                                                      Description                                                                      |
| :------------: | :-----------: | :---------------------------------------------------------------------------------------------------------------------------------------------------: |
| `Content-Type` | `POST, PATCH` |                        The Content-Type representation header is used<br> to indicate the original media type of the resource.                        |
|    `Bearer`    |     `ALL`     | Bearer authentication (also called token authentication) is an<br> HTTP authentication scheme that involves security tokens<br> called bearer tokens. |

## References

- [Socrata/cors-and-jsonp :icon-link-external:](https://dev.socrata.com/docs/cors-and-jsonp.html){target="\_blank"}
- [Mozilla/content-type :icon-link-external:](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Type){target="\_blank"}
- [Swagger/bearer-authentication :icon-link-external:](https://swagger.io/docs/specification/authentication/bearer-authentication/){target="\_blank"}
