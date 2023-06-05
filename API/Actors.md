---
label: Actors
icon: people
---

# Actors

Fetches a list of actors.

## Options

You can use the [Try it (Actors)]({{url}}/try-it/#/actors) section to test endpoints request

| Method                                | Url                                                     | Description                               |
| :------------------------------------ | :------------------------------------------------------ | :---------------------------------------- |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/actors                             | **Retrieves** all.                        |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/actors/\{uuid\}                    | **Retrieves** one by **UUID**.            |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/actors/\{uuid\}/socials            | **Retrieves** all socials.                |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/actors/\{uuid\}/socials/\{social\} | **Retrieves** one social by the **name**. |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/actors/random                      | **Retrieves** one random.                 |

## Schema

Returns a json with the following stucture:

| Field                                                         | Data Type                                |
| :------------------------------------------------------------ | :--------------------------------------- |
| uuid                                                          | UUID                                     |
| href                                                          | String                                   |
| first_name [[!badge variant="info" text="Filter"]](#filters)  | String                                   |
| last_name [[!badge variant="info" text="Filter"]](#filters)   | String                                   |
| nicknames [[!badge variant="info" text="Filter"]](#filters)   | List\<String\>                           |
| birth_date [[!badge variant="info" text="Filter"]](#filters)  | TIMESTAMP                                |
| death_date [[!badge variant="info" text="Filter"]](#filters)  | TIMESTAMP                                |
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

| Field       | Example                  |
| :---------- | :----------------------- |
| first_name  | `?first_name=Lorem`      |
| last_name   | `?last_name=Ipsum`       |
| nicknames   | `?nicknames=ipsum,lorem` |
| birth_date  | `?birth_date=1888-01-01` |
| death_date  | `?death_date=2000-12-01` |
| gender      | `?gender=0`              |
| nationality | `?nationality=American`  |
