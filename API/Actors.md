---
label: Actors
icon: people
---

# Actors

Fetches a list of actors.

## Options

| Method                                  | Url                     |  Role   | Description                                 |
| :-------------------------------------- | :---------------------- | :-----: | :------------------------------------------ |
| [!badge variant="primary" text="GET"]   | /api/v1/actors          |         | **Retrieves** all actors.                   |
| [!badge variant="primary" text="GET"]   | /api/v1/actors/\{uuid\} |         | **Retrieves** one actor using its **UUID**. |
| [!badge variant="warning" text="PATCH"] | /api/v1/actors/\{uuid\} |  `MOD`  | **Update** one actor using its **UUID**.    |
| [!badge variant="success" text="POST"]  | /api/v1/actors/         | `ADMIN` | **Add** one actor.                          |
| [!badge variant="danger" text="DELETE"] | /api/v1/actors/\{uuid\} | `ADMIN` | **Delete** one actor using its **UUID**.    |

## Example

+++ JavaScript
TODO: Add sample code
+++

## Schema

Returns a json with the following stucture:

| Field                                                         | Data Type                                |
| :------------------------------------------------------------ | :--------------------------------------- |
| uuid                                                          | UUID                                     |
| href                                                          | String                                   |
| first_name [[!badge variant="info" text="Filter"]](#filters)  | String                                   |
| last_name [[!badge variant="info" text="Filter"]](#filters)   | String                                   |
| nicknames                                                     | List\<String\>                           |
| birth_date                                                    | TIMESTAMP                                |
| death_date                                                    | TIMESTAMP                                |
| gender [[!badge variant="info" text="Filter"]](#filters)      | Byte ([Why?](../Guides/ISO-IEC-5218.md)) |
| nationality [[!badge variant="info" text="Filter"]](#filters) | String                                   |
| seasons                                                       | List\<String\>                           |
| awards                                                        | List\<String\>                           |
| character                                                     | String                                   |
| thumbnail                                                     | String                                   |
| images                                                        | List\<String\>                           |
| sources                                                       | List\<String\>                           |
| created_at                                                    | TIMESTAMP                                |
| updated_at                                                    | TIMESTAMP                                |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field       | Example                                      |
| :---------- | :------------------------------------------- |
| first_name  | `/api/{version}/{item}?first_name={filter}`  |
| last_name   | `/api/{version}/{item}?last_name={filter}`   |
| gender      | `/api/{version}/{item}?gender={filter}`      |
| nationality | `/api/{version}/{item}?nationality={filter}` |
