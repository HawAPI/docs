---
label: Seasons
icon: file-directory
---

# Seasons

Fetches a list of seasons.

## Options

| Method                                | Url                                                             | Description                     |
| :------------------------------------ | :-------------------------------------------------------------- | :------------------------------ |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/seasons                                    | **Retrieves** all.              |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/seasons/\{uuid\}                           | **Retrieves** one by **UUID**.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/seasons/\{uuid\}/translations              | **Retrieves** all translations. |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/seasons/\{uuid\}/translations/\{language\} | **Retrieves** one translation.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/seasons/random                             | **Retrieves** one random.       |

## Schema

Returns a json with the following stucture:

| Field                                                            | Data Type      |
| :--------------------------------------------------------------- | :------------- |
| uuid                                                             | UUID           |
| href                                                             | String         |
| title [[!badge variant="info" text="Filter"]](#filters)          | String         |
| description [[!badge variant="info" text="Filter"]](#filters)    | String         |
| duration_total [[!badge variant="info" text="Filter"]](#filters) | Int            |
| genres [[!badge variant="info" text="Filter"]](#filters)         | List\<String\> |
| season                                                           | Int            |
| season_num [[!badge variant="info" text="Filter"]](#filters)     | Int            |
| release_date [[!badge variant="info" text="Filter"]](#filters)   | Date           |
| next_season                                                      | String         |
| prev_season                                                      | String         |
| episodes                                                         | List\<String\> |
| soundtracks                                                      | List\<String\> |
| trailers                                                         | List\<String\> |
| budget [[!badge variant="info" text="Filter"]](#filters)         | Int            |
| images                                                           | List\<String\> |
| sources                                                          | List\<String\> |
| created_at                                                       | Date           |
| updated_at                                                       | Date           |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field          | Example                    | Modification |
| :------------- | :------------------------- | :----------: |
| title          | `?title=Lorem`             |    EQUALS    |
| description    | `?description=Lorem`       |    EQUALS    |
| duration_total | `?duration_total=254789`   |    EQUALS    |
| genres         | `?genres=genre1,genre2`    |    EQUALS    |
| season_num     | `?season_num=1`            |    EQUALS    |
| release_date   | `?release_date=2015-01-01` |    EQUALS    |
| next_episode   | `?next_episode=*<uuid>`    |     LIKE     |
| prev_epsisode  | `?prev_epsisode=*<uuid>`   |     LIKE     |
| budget         | `?budget=48000000`         |    EQUALS    |

## Example

> [!badge variant="primary" text="GET"] /api/{{api_version}}/seasons/random

```json
{
  "uuid": "4bae1f7c-04ff-40d7-a161-83d8608fbe1c",
  "href": "/api/v1/seasons/4bae1f7c-04ff-40d7-a161-83d8608fbe1c",
  "sources": [
    "https://www.netflix.com/title/80057281",
    "https://www.rottentomatoes.com/tv/stranger_things",
    "https://in.ign.com/stranger-things/171687/news/season-4-of-stranger-things-reportedly-costed-30-million-per-episode"
  ],
  "thumbnail": "https://s6.imgcdn.dev/xdU0w.jpg",
  "title": "Stranger Things 4",
  "description": "Darkness returns to Hawkins just in time for spring break, igniting fresh terror, disturbing memories — and an ominous new threat.",
  "language": "en-US",
  "genres": ["Drama", "Sci fi", "Horror", "Mystery thriller"],
  "episodes": [
    "/api/v1/episodes/88cd5665-bfb6-4176-9040-9194573eeac8",
    "/api/v1/episodes/3fabbaa2-d763-4e0e-83b7-bea55b28adad",
    "/api/v1/episodes/c19ae791-02b4-4861-85a8-94fbba1f24ba",
    "/api/v1/episodes/7261b8fb-d478-4d71-8787-08767d44197e",
    "/api/v1/episodes/07a4fe52-d9cb-476e-b981-a1a05f5ef81c",
    "/api/v1/episodes/ffd88734-834a-4cb4-b620-4f9fe97aea31",
    "/api/v1/episodes/6adf4b0e-134e-466d-9c62-763b339da1a4",
    "/api/v1/episodes/922abde7-eff1-4cf5-b643-37ed1aad6be5",
    "/api/v1/episodes/04984f61-7c04-4cec-8fc7-bc0786df8d4c"
  ],
  "trailers": [
    "https://www.youtube.com/watch?v=a3thyAnShck",
    "https://www.youtube.com/watch?v=mVsJXiI60a0",
    "https://www.youtube.com/watch?v=sBEvEcpnG7k"
  ],
  "budget": 270000000,
  "created_at": "2023-07-24T20:51:42.57",
  "updated_at": "2023-07-24T20:51:42.571",
  "duration_total": 46920000,
  "season_num": 4,
  "release_date": "2022-05-27",
  "prev_season": "/api/v1/seasons/b956e444-8489-4bf9-9dd0-fb6b7683638a"
}
```
