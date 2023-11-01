---
label: Locations
icon: location
---

# Locations

Fetches a list of locations.

## Options

| Method                                | Url                                                               | Description                     |
| :------------------------------------ | :---------------------------------------------------------------- | :------------------------------ |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/locations                                    | **Retrieves** all.              |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/locations/\{uuid\}                           | **Retrieves** one by **UUID**.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/locations/\{uuid\}/translations              | **Retrieves** all translations. |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/locations/\{uuid\}/translations/\{language\} | **Retrieves** one translation.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/locations/random                             | **Retrieves** one random.       |

## Schema

Returns a json with the following stucture:

| Field                                                         | Data Type      |
| :------------------------------------------------------------ | :------------- |
| uuid                                                          | UUID           |
| href                                                          | String         |
| name [[!badge variant="info" text="Filter"]](#filters)        | String         |
| description [[!badge variant="info" text="Filter"]](#filters) | String         |
| thumbnail                                                     | String         |
| images                                                        | List\<String\> |
| sources                                                       | List\<String\> |
| created_at                                                    | Date           |
| updated_at                                                    | Date           |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field       | Example              | Modification |
| :---------- | :------------------- | :----------: |
| name        | `?name=Lorem`        |    EQUALS    |
| description | `?description=Lorem` |    EQUALS    |

## Example

> [!badge variant="primary" text="GET"] /api/{{api_version}}/locations/random

```json
{
  "uuid": "f374c7fd-4468-458d-a219-cf71c7a1254a",
  "href": "/api/v1/locations/f374c7fd-4468-458d-a219-cf71c7a1254a",
  "sources": [
    "https://strangerthings.fandom.com/wiki/Mayfield_trailer",
    "https://strangerthings.fandom.com/wiki/Category:Locations"
  ],
  "thumbnail": "https://s6.imgcdn.dev/xb20L.jpg",
  "name": "Mayfield trailer",
  "description": "The Mayfield trailer is a trailer home that Max Mayfield and her mother lived in after Max's stepfather.",
  "language": "en-US",
  "images": [
    "https://oddstops.com/i/2022/07/15/20220715084940-max-trailer.webp",
    "https://oddstops.com/i/2022/07/15/p-202207150836-trailer-park-stranger-thing.webp"
  ],
  "created_at": "2023-07-26T22:26:11.324",
  "updated_at": "2023-07-26T22:26:11.324"
}
```
