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

| Field                                                         | Data Type      |
| :------------------------------------------------------------ | :------------- |
| uuid                                                          | UUID           |
| href                                                          | String         |
| title [[!badge variant="info" text="Filter"]](#filters)       | String         |
| description [[!badge variant="info" text="Filter"]](#filters) | String         |
| duration [[!badge variant="info" text="Filter"]](#filters)    | Int            |
| episode_num [[!badge variant="info" text="Filter"]](#filters) | Int            |
| next_episode                                                  | String         |
| prev_epsisode                                                 | String         |
| thumbnail                                                     | String         |
| season                                                        | String         |
| images                                                        | List\<String\> |
| sources                                                       | List\<String\> |
| created_at                                                    | TIMESTAMP      |
| updated_at                                                    | TIMESTAMP      |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field       | Example              |
| :---------- | :------------------- |
| title       | `?title=Lorem`       |
| description | `?description=Lorem` |
| duration    | `?duration=1894895`  |
| episode_num | `?episode_num=4}`    |
