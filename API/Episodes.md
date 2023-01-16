---
label: Episodes
icon: list-ordered
---

# Episodes

Fetches a list of episodes.

## Options

| Method                                  | Url                       |  Role   | Description                                   |
| :-------------------------------------- | :------------------------ | :-----: | :-------------------------------------------- |
| [!badge variant="primary" text="GET"]   | /api/v1/episodes          |         | **Retrieves** all episodes.                   |
| [!badge variant="primary" text="GET"]   | /api/v1/episodes/\{uuid\} |         | **Retrieves** one episode using its **UUID**. |
| [!badge variant="warning" text="PATCH"] | /api/v1/episodes/\{uuid\} | `ADMIN` | **Update** one episode using its **UUID**.    |
| [!badge variant="success" text="POST"]  | /api/v1/episodes/         | `ADMIN` | **Add** one episode.                          |
| [!badge variant="danger" text="DELETE"] | /api/v1/episodes/\{uuid\} | `ADMIN` | **Delete** one episode using its **UUID**.    |

## Schema

Returns a json with the following stucture:

| Field                                                         | Data Type      |
| :------------------------------------------------------------ | :------------- |
| uuid                                                          | UUID           |
| href                                                          | String         |
| title [[!badge variant="info" text="Filter"]](#filters)       | String         |
| description [[!badge variant="info" text="Filter"]](#filters) | String         |
| duration                                                      | Int            |
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

| Field       | Example                                      |
| :---------- | :------------------------------------------- |
| title       | `/api/{version}/{item}?title={filter}`       |
| duration    | `/api/{version}/{item}?duration={filter}`    |
| episode_num | `/api/{version}/{item}?episode_num={filter}` |
