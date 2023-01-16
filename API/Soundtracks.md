---
label: Soundtracks
icon: play
---

# Soundtracks

Fetches a list of soundtracks.

## Options

| Method                                  | Url                          |  Role   | Description                                      |
| :-------------------------------------- | :--------------------------- | :-----: | :----------------------------------------------- |
| [!badge variant="primary" text="GET"]   | /api/v1/soundtracks          |         | **Retrieves** all soundtracks.                   |
| [!badge variant="primary" text="GET"]   | /api/v1/soundtracks/\{uuid\} |         | **Retrieves** one soundtrack using its **UUID**. |
| [!badge variant="warning" text="PATCH"] | /api/v1/soundtracks/\{uuid\} | `ADMIN` | **Update** one soundtrack using its **UUID**.    |
| [!badge variant="success" text="POST"]  | /api/v1/soundtracks/         | `ADMIN` | **Add** one soundtrack.                          |
| [!badge variant="danger" text="DELETE"] | /api/v1/soundtracks/\{uuid\} | `ADMIN` | **Delete** one soundtrack using its **UUID**.    |

## Schema

Returns a json with the following stucture:

| Field                                                    | Data Type      |
| :------------------------------------------------------- | :------------- |
| uuid                                                     | UUID           |
| href                                                     | String         |
| name [[!badge variant="info" text="Filter"]](#filters)   | String         |
| duration                                                 | Int            |
| artist [[!badge variant="info" text="Filter"]](#filters) | String         |
| album [[!badge variant="info" text="Filter"]](#filters)  | String         |
| release_date                                             | TIMESTAMP      |
| urls                                                     | List\<String\> |
| thumbnail                                                | String         |
| sources                                                  | List\<String\> |
| created_at                                               | TIMESTAMP      |
| updated_at                                               | TIMESTAMP      |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field  | Example                                 |
| :----- | :-------------------------------------- |
| name   | `/api/{version}/{item}?name={filter}`   |
| artist | `/api/{version}/{item}?artist={filter}` |
| album  | `/api/{version}/{item}?album={filter}`  |
