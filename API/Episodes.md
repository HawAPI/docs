---
label: Episodes
icon: list-ordered
---

# Episodes

Fetches a list of episodes.

## Options

| Method                                | Url                                                              | Description                     |
| :------------------------------------ | :--------------------------------------------------------------- | :------------------------------ |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/episodes                                    | **Retrieves** all.              |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/episodes/\{uuid\}                           | **Retrieves** one by **UUID**.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/episodes/\{uuid\}/translations              | **Retrieves** all translations. |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/episodes/\{uuid\}/translations/\{language\} | **Retrieves** one translation.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/episodes/random                             | **Retrieves** one random.       |

## Schema

Returns a json with the following stucture:

| Field                                                           | Data Type      |
| :-------------------------------------------------------------- | :------------- |
| uuid                                                            | UUID           |
| href                                                            | String         |
| title [[!badge variant="info" text="Filter"]](#filters)         | String         |
| description [[!badge variant="info" text="Filter"]](#filters)   | String         |
| duration [[!badge variant="info" text="Filter"]](#filters)      | Int            |
| episode_num [[!badge variant="info" text="Filter"]](#filters)   | Int            |
| next_episode [[!badge variant="info" text="Filter"]](#filters)  | String         |
| prev_epsisode [[!badge variant="info" text="Filter"]](#filters) | String         |
| thumbnail                                                       | String         |
| season [[!badge variant="info" text="Filter"]](#filters)        | String         |
| images                                                          | List\<String\> |
| sources                                                         | List\<String\> |
| created_at                                                      | Date           |
| updated_at                                                      | Date           |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field         | Example                  | Modification |
| :------------ | :----------------------- | :----------: |
| title         | `?title=Lorem`           |    EQUALS    |
| description   | `?description=Lorem`     |    EQUALS    |
| duration      | `?duration=1894895`      |    EQUALS    |
| episode_num   | `?episode_num=4`         |    EQUALS    |
| next_episode  | `?next_episode=*<uuid>`  |     LIKE     |
| prev_epsisode | `?prev_epsisode=*<uuid>` |     LIKE     |
| season        | `?season=*<uuid>`        |     LIKE     |

## Example

> [!badge variant="primary" text="GET"] /api/{{api_version}}/episodes/random

```json
{
  "uuid": "a07af8a9-0873-4f6c-9cfa-8eafc8705fb2",
  "href": "/api/v1/episodes/a07af8a9-0873-4f6c-9cfa-8eafc8705fb2",
  "sources": ["https://www.netflix.com/title/80057281"],
  "thumbnail": "https://s6.imgcdn.dev/xWXri.jpg",
  "title": "The Bite",
  "description": "With time running out -- and an assassin close behind -- Hopper's crew races back to Hawkins, where El and the kids are preparing for war.",
  "language": "en-US",
  "duration": 3360000,
  "season": "/api/v1/seasons/b956e444-8489-4bf9-9dd0-fb6b7683638a",
  "created_at": "2023-07-24T12:33:55.767",
  "updated_at": "2023-07-24T12:33:55.767",
  "episode_num": 7,
  "next_episode": "/api/v1/episodes/a4ed46c8-47b7-40fc-b1d9-cacc629e93da",
  "prev_episode": "/api/v1/episodes/a07af8a9-0873-4f6c-9cfa-8eafc8705fb2"
}
```
