---
label: Characters
icon: hubot
---

# Characters

Fetches a list of characters.

## Options

| Method                                | Url                                      | Description                    |
| :------------------------------------ | :--------------------------------------- | :----------------------------- |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/characters          | **Retrieves** all.             |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/characters/\{uuid\} | **Retrieves** one by **UUID**. |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/characters/random   | **Retrieves** one random.      |

## Schema

Returns a json with the following stucture:

| Field                                                        | Data Type                                |
| :----------------------------------------------------------- | :--------------------------------------- |
| uuid                                                         | UUID                                     |
| href                                                         | String                                   |
| first_name [[!badge variant="info" text="Filter"]](#filters) | String                                   |
| last_name [[!badge variant="info" text="Filter"]](#filters)  | String                                   |
| nicknames [[!badge variant="info" text="Filter"]](#filters)  | List\<String\>                           |
| birth_date [[!badge variant="info" text="Filter"]](#filters) | Date                                     |
| death_date [[!badge variant="info" text="Filter"]](#filters) | Date                                     |
| gender [[!badge variant="info" text="Filter"]](#filters)     | Byte ([Why?](../Guides/ISO-IEC-5218.md)) |
| thumbnail                                                    | String                                   |
| actor [[!badge variant="info" text="Filter"]](#filters)      | String                                   |
| images                                                       | List\<String\>                           |
| sources                                                      | List\<String\>                           |
| created_at                                                   | Date                                     |
| updated_at                                                   | Date                                     |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field      | Example                  | Modification |
| :--------- | :----------------------- | :----------: |
| first_name | `?first_name=Lorem`      |    EQUALS    |
| last_name  | `?last_name=Ipsum`       |    EQUALS    |
| nicknames  | `?nicknames=ipsum,lorem` |    EQUALS    |
| birth_date | `?birth_date=1888-01-01` |    EQUALS    |
| death_date | `?death_date=2000-12-01` |    EQUALS    |
| gender     | `?gender=0`              |    EQUALS    |
| actor      | `?actor=*<uuid>`         |     LIKE     |

## Example

> [!badge variant="primary" text="GET"] /api/{{api_version}}/characters/random

```json
{
  "uuid": "ef69d278-76be-478e-a087-c81071cb83c3",
  "href": "/api/v1/characters/ef69d278-76be-478e-a087-c81071cb83c3",
  "sources": ["https://strangerthings.fandom.com/wiki/Mike_Wheeler"],
  "thumbnail": "https://s6.imgcdn.dev/xm7Sq.jpg",
  "gender": 1,
  "actor": "/api/v1/actorss/52b8e340-aa3b-4899-af56-4bd727512cbd",
  "images": [
    "https://static.wikia.nocookie.net/strangerthings8338/images/1/19/Mike_S02E09.jpg",
    "https://upload.wikimedia.org/wikipedia/pt/e/e7/Mike-Wheeler-S3.jpg",
    "https://rollingstone.uol.com.br/media/uploads/2023/02/stranger-things-mike-morre-5-temporada-foto-reproducao-netflix.jpg",
    "https://hips.hearstapps.com/hmg-prod/images/stranger-things-finn-wolfhard-1654185204.jpg"
  ],
  "created_at": "2023-08-11T19:27:25.287548",
  "updated_at": "2023-08-11T19:27:25.287548",
  "first_name": "Mike",
  "last_name": "Wheeler",
  "birth_date": "1971-04-07"
}
```
