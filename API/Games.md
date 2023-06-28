---
label: Games
icon: person
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
| stores                                                         | List\<String\> |
| modes                                                          | List\<String\> |
| tags                                                           | List\<String\> |
| name [[!badge variant="info" text="Filter"]](#filters)         | String         |
| genres [[!badge variant="info" text="Filter"]](#filters)       | List\<String\> |
| platforms [[!badge variant="info" text="Filter"]](#filters)    | List\<String\> |
| publishers [[!badge variant="info" text="Filter"]](#filters)   | List\<String\> |
| developers [[!badge variant="info" text="Filter"]](#filters)   | List\<String\> |
| release_date [[!badge variant="info" text="Filter"]](#filters) | TIMESTAMP      |
| website                                                        | String         |
| playtime                                                       | Integer        |
| trailer                                                        | String         |
| age_rating                                                     | String         |
| thumbnail                                                      | String         |
| images                                                         | List\<String\> |
| sources                                                        | List\<String\> |
| created_at                                                     | TIMESTAMP      |
| updated_at                                                     | TIMESTAMP      |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field        | Example                             |
| :----------- | :---------------------------------- |
| name         | `?name=Lorem`                       |
| genres       | `?genres=genre1,genre2`             |
| platforms    | `?platforms=platform1,platform2`    |
| publishers   | `?publishers=publisher1,publisher2` |
| developers   | `?developers=developer1,developer2` |
| release_date | `?release_date=2001-01-01`          |
