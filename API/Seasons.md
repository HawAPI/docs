---
label: Seasons
icon: grabber
---

# Seasons

Fetches a list of seasons.

## Options

| Method                                  | Url                      |  Role   | Description                                  |
| :-------------------------------------- | :----------------------- | :-----: | :------------------------------------------- |
| [!badge variant="primary" text="GET"]   | /api/v1/seasons          |         | **Retrieves** all seasons.                   |
| [!badge variant="primary" text="GET"]   | /api/v1/seasons/\{uuid\} |         | **Retrieves** one season using its **UUID**. |
| [!badge variant="warning" text="PATCH"] | /api/v1/seasons/\{uuid\} |  `MOD`  | **Update** one season using its **UUID**.    |
| [!badge variant="success" text="POST"]  | /api/v1/seasons/         | `ADMIN` | **Add** one season.                          |
| [!badge variant="danger" text="DELETE"] | /api/v1/seasons/\{uuid\} | `ADMIN` | **Delete** one season using its **UUID**.    |

## Example

+++ JavaScript
TODO: Add sample code
+++

## Schema

Returns a json with the following stucture:

| Field                                                    | Data Type      |
| :------------------------------------------------------- | :------------- |
| uuid                                                     | UUID           |
| href                                                     | String         |
| title [[!badge variant="info" text="Filter"]](#filters)  | String         |
| description                                              | String         |
| duration_total                                           | Int            |
| genres [[!badge variant="info" text="Filter"]](#filters) | List\<String\> |
| season                                                   | Int            |
| season_num                                               | Int            |
| release_date                                             | TIMESTAMP      |
| next_season                                              | String         |
| prev_season                                              | String         |
| episodes                                                 | List\<String\> |
| soundtracks                                              | List\<String\> |
| trailers                                                 | List\<String\> |
| budget                                                   | Int            |
| images                                                   | List\<String\> |
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
| title  | `/api/{version}/{item}?title={filter}`  |
| genres | `/api/{version}/{item}?genres={filter}` |
