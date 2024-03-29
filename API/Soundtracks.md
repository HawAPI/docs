---
label: Soundtracks
icon: play
---

# Soundtracks

Fetches a list of soundtracks.

## Options

| Method                                | Url                                       | Description                    |
| :------------------------------------ | :---------------------------------------- | :----------------------------- |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/soundtracks          | **Retrieves** all.             |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/soundtracks/\{uuid\} | **Retrieves** one by **UUID**. |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/soundtracks/random   | **Retrieves** one random.      |

## Schema

Returns a json with the following stucture:

| Field                                                          | Data Type      |
| :------------------------------------------------------------- | :------------- |
| uuid                                                           | UUID           |
| href                                                           | String         |
| name [[!badge variant="info" text="Filter"]](#filters)         | String         |
| duration [[!badge variant="info" text="Filter"]](#filters)     | Int            |
| artist [[!badge variant="info" text="Filter"]](#filters)       | String         |
| album [[!badge variant="info" text="Filter"]](#filters)        | String         |
| release_date [[!badge variant="info" text="Filter"]](#filters) | Date           |
| urls                                                           | List\<String\> |
| thumbnail                                                      | String         |
| sources                                                        | List\<String\> |
| created_at                                                     | Date           |
| updated_at                                                     | Date           |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field        | Example                    | Modification |
| :----------- | :------------------------- | :----------: |
| name         | `?name=Lorem`              |    EQUALS    |
| duration     | `?duration=245712`         |    EQUALS    |
| artist       | `?artist=Ipsum`            |    EQUALS    |
| album        | `?album=Lorem Ipsum`       |    EQUALS    |
| release_date | `?release_date=2018-01-01` |    EQUALS    |
