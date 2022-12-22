---
label: Games
icon: person
---

# Games

Fetches a list of games.

## Options

| Method                                  | Url                    |  Role   | Description                                |
| :-------------------------------------- | :--------------------- | :-----: | :----------------------------------------- |
| [!badge variant="primary" text="GET"]   | /api/v1/games          |         | **Retrieves** all games.                   |
| [!badge variant="primary" text="GET"]   | /api/v1/games/\{uuid\} |         | **Retrieves** one game using its **UUID**. |
| [!badge variant="warning" text="PATCH"] | /api/v1/games/\{uuid\} |  `MOD`  | **Update** one game using its **UUID**.    |
| [!badge variant="success" text="POST"]  | /api/v1/games/         | `ADMIN` | **Add** one game.                          |
| [!badge variant="danger" text="DELETE"] | /api/v1/games/\{uuid\} | `ADMIN` | **Delete** one game using its **UUID**.    |

## Example

+++ JavaScript
TODO: Add sample code
+++

## Schema

Returns a json with the following stucture:

| Field                                                       | Data Type      |
| :---------------------------------------------------------- | :------------- |
| uuid                                                        | UUID           |
| href                                                        | String         |
| name [[!badge variant="info" text="Filter"]](#filters)      | String         |
| platforms [[!badge variant="info" text="Filter"]](#filters) | List\<String\> |
| genres [[!badge variant="info" text="Filter"]](#filters)    | List\<String\> |
| publishers                                                  | List\<String\> |
| developers                                                  | List\<String\> |
| release_date                                                | TIMESTAMP      |
| url                                                         | String         |
| trailer                                                     | String         |
| thumbnail                                                   | String         |
| images                                                      | List\<String\> |
| sources                                                     | List\<String\> |
| created_at                                                  | TIMESTAMP      |
| updated_at                                                  | TIMESTAMP      |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field     | Example                                    |
| :-------- | :----------------------------------------- |
| name      | `/api/{version}/{item}?name={filter}`      |
| platforms | `/api/{version}/{item}?platforms={filter}` |
| genres    | `/api/{version}/{item}?genres={filter}`    |
