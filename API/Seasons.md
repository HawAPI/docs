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

| Field          | Example                    |
| :------------- | :------------------------- |
| title          | `?title=Lorem`             |
| description    | `?description=Lorem`       |
| duration_total | `?duration_total=254789`   |
| genres         | `?genres=genre1,genre2`    |
| season_num     | `?season_num=1`            |
| release_date   | `?release_date=2015-01-01` |
