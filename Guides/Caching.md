---
icon: database
---

By default we cache the results of each request you make for **1 hour**. If you make the same request again, for example, we'll serve the cached result.

The cache is shared across all users. If two users run a query with the same requests—even with different auth tokens—the cached results are still returned.

- **Example**: If you send a query such as `/api/v1/episodes?episode_num=1` and a second query string with `/api/v1/episodes?episode_num=2`, the API will pick up that these are different and will _create a cache for each one_.

You can identify if a result has been cached by checking the `ETag` header on the API response.

## ETag

The ETag (or entity tag) HTTP response header is an identifier for a specific version of a resource. It lets caches be more efficient and save bandwidth, as a web server does not need to resend a full response if the content was not changed.

- Syntax

```
ETag: W/"<etag_value>"
ETag: "<etag_value>"
```

- Example

```
ETag: "33a64df551425fcc55e4d42a148795d9f25f89d4"
ETag: W/"0815"
```

## If-None-Match

On receiving the request for XYZ along with 'If-None-Match' header, the server side logic checks whether XYZ needs a new copy of the resource by comparing the current value of the ETag identifier on the server side and the one which is received in the request header.

- If request's **If-None-Match is same** as currently generated/assigned value of ETag on the server, then status code 304 (Not Modified) with the empty body is sent back and the browser uses cached copy of XYZ.
- If request's **If-None-Match value doesn't match** the currently generated/assigned value of ETag for XYZ then server sends back the new content in the body along with status code 200.

The 'ETag' header with the new value is also included in the response. The browser uses the new XYZ and updates its cache with the new data.

## References

- [Mozilla/etag :icon-link-external:](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/ETag)
- [Logicbig/etag-header :icon-link-external:](https://www.logicbig.com/quick-info/web/etag-header.html)
