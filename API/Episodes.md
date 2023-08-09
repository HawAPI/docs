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
