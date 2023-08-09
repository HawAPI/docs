---
label: Characters
icon: hubot
---

# Characters

Fetches a list of characters.

## Options

| Method                                | Url                                      | Description                    |
| :------------------------------------ | :--------------------------------------- | :----------------------------- |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/characters          | **Retrieves** all.             |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/characters/\{uuid\} | **Retrieves** one by **UUID**. |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/characters/random   | **Retrieves** one random.      |

## Schema

Returns a json with the following stucture:

| Field                                                        | Data Type                                |
| :----------------------------------------------------------- | :--------------------------------------- |
| uuid                                                         | UUID                                     |
| href                                                         | String                                   |
| first_name [[!badge variant="info" text="Filter"]](#filters) | String                                   |
| last_name [[!badge variant="info" text="Filter"]](#filters)  | String                                   |
| nicknames [[!badge variant="info" text="Filter"]](#filters)  | List\<String\>                           |
| birth_date [[!badge variant="info" text="Filter"]](#filters) | Date                                     |
| death_date [[!badge variant="info" text="Filter"]](#filters) | Date                                     |
| gender [[!badge variant="info" text="Filter"]](#filters)     | Byte ([Why?](../Guides/ISO-IEC-5218.md)) |
| thumbnail                                                    | String                                   |
| actor [[!badge variant="info" text="Filter"]](#filters)      | String                                   |
| images                                                       | List\<String\>                           |
| sources                                                      | List\<String\>                           |
| created_at                                                   | Date                                     |
| updated_at                                                   | Date                                     |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field      | Example                  | Modification |
| :--------- | :----------------------- | :----------: |
| first_name | `?first_name=Lorem`      |    EQUALS    |
| last_name  | `?last_name=Ipsum`       |    EQUALS    |
| nicknames  | `?nicknames=ipsum,lorem` |    EQUALS    |
| birth_date | `?birth_date=1888-01-01` |    EQUALS    |
| death_date | `?death_date=2000-12-01` |    EQUALS    |
| gender     | `?gender=0`              |    EQUALS    |
| actor      | `?actor=*<uuid>`         |     LIKE     |
