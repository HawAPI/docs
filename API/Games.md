---
label: Games
icon: rocket
---

# Games

Fetches a list of games.

## Options

| Method                                | Url                                                           | Description                     |
| :------------------------------------ | :------------------------------------------------------------ | :------------------------------ |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/games                                    | **Retrieves** all.              |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/games/\{uuid\}                           | **Retrieves** one by **UUID**.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/games/\{uuid\}/translations              | **Retrieves** all translations. |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/games/\{uuid\}/translations/\{language\} | **Retrieves** one translation.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/games/random                             | **Retrieves** one random.       |

## Schema

Returns a json with the following stucture:

| Field                                                          | Data Type      |
| :------------------------------------------------------------- | :------------- |
| uuid                                                           | UUID           |
| href                                                           | String         |
| stores [[!badge variant="info" text="Filter"]](#filters)       | List\<String\> |
| modes [[!badge variant="info" text="Filter"]](#filters)        | List\<String\> |
| tags [[!badge variant="info" text="Filter"]](#filters)         | List\<String\> |
| name [[!badge variant="info" text="Filter"]](#filters)         | String         |
| genres [[!badge variant="info" text="Filter"]](#filters)       | List\<String\> |
| platforms [[!badge variant="info" text="Filter"]](#filters)    | List\<String\> |
| publishers [[!badge variant="info" text="Filter"]](#filters)   | List\<String\> |
| developers [[!badge variant="info" text="Filter"]](#filters)   | List\<String\> |
| release_date [[!badge variant="info" text="Filter"]](#filters) | Date           |
| website                                                        | String         |
| playtime [[!badge variant="info" text="Filter"]](#filters)     | Integer        |
| trailer                                                        | String         |
| age_rating [[!badge variant="info" text="Filter"]](#filters)   | String         |
| thumbnail                                                      | String         |
| images                                                         | List\<String\> |
| sources                                                        | List\<String\> |
| created_at                                                     | Date           |
| updated_at                                                     | Date           |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field        | Example                              | Modification |
| :----------- | :----------------------------------- | :----------: |
| name         | `?name=Lorem`                        |    EQUALS    |
| genres       | `?genres=:genre1,genre2`             |      IN      |
| stores       | `?stores=:store1,store2`             |      IN      |
| modes        | `?modes=:mode1,mode2`                |      IN      |
| tags         | `?tags=:tag1,tag2`                   |      IN      |
| platforms    | `?platforms=:platform1,platform2`    |      IN      |
| publishers   | `?publishers=:publisher1,publisher2` |      IN      |
| developers   | `?developers=:developer1,developer2` |      IN      |
| release_date | `?release_date=2001-01-01`           |    EQUALS    |
| playtime     | `?playtime=>18000000`                | GREATER_THAN |
| age_rating   | `?age_rating=16+`                    |    EQUALS    |
