---
icon: cache
---

By default we cache the results of each request you make for **X hours**. If you make the same request again, for example, we'll serve the cached result.

The cache is shared across all users. If two users run a query with the same requests—even with different auth tokens—the cached results are still returned.

You can identify if a result has been cached by checking the `Cache-Control` header on the API response.

- **Example**: If you send a query variable such as `?foo=bar` and a second query string with `?foo=123`, the API will pick up that these are different and will _create a cache for each one_.
