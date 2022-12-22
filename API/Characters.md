---
label: Characters
icon: hubot
---

# Characters

Fetches a list of characters.

## Options

| Method                                  | Url                         |  Role   | Description                                     |
| :-------------------------------------- | :-------------------------- | :-----: | :---------------------------------------------- |
| [!badge variant="primary" text="GET"]   | /api/v1/characters          |         | **Retrieves** all characters.                   |
| [!badge variant="primary" text="GET"]   | /api/v1/characters/\{uuid\} |         | **Retrieves** one character using its **UUID**. |
| [!badge variant="warning" text="PATCH"] | /api/v1/characters/\{uuid\} |  `MOD`  | **Update** one character using its **UUID**.    |
| [!badge variant="success" text="POST"]  | /api/v1/characters/         | `ADMIN` | **Add** one character.                          |
| [!badge variant="danger" text="DELETE"] | /api/v1/characters/\{uuid\} | `ADMIN` | **Delete** one character using its **UUID**.    |

## Example

+++ JavaScript
TODO: Add sample code
+++

## Schema

Returns a json with the following stucture:

| Field                                                        | Data Type                                |
| :----------------------------------------------------------- | :--------------------------------------- |
| uuid                                                         | UUID                                     |
| href                                                         | String                                   |
| first_name [[!badge variant="info" text="Filter"]](#filters) | String                                   |
| last_name [[!badge variant="info" text="Filter"]](#filters)  | String                                   |
| nicknames                                                    | List\<String\>                           |
| birth_date                                                   | TIMESTAMP                                |
| death_date                                                   | TIMESTAMP                                |
| gender [[!badge variant="info" text="Filter"]](#filters)     | Byte ([Why?](../Guides/ISO-IEC-5218.md)) |
| thumbnail                                                    | String                                   |
| actor                                                        | String                                   |
| images                                                       | List\<String\>                           |
| sources                                                      | List\<String\>                           |
| created_at                                                   | TIMESTAMP                                |
| updated_at                                                   | TIMESTAMP                                |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field      | Example                                     |
| :--------- | :------------------------------------------ |
| first_name | `/api/{version}/{item}?first_name={filter}` |
| last_name  | `/api/{version}/{item}?last_name={filter}`  |
| gender     | `/api/{version}/{item}?gender={filter}`     |
