---
label: Locations
icon: location
---

# Locations

Fetches a list of locations.

## Options

| Method                                | Url                                                               | Description                     |
| :------------------------------------ | :---------------------------------------------------------------- | :------------------------------ |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/locations                                    | **Retrieves** all.              |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/locations/\{uuid\}                           | **Retrieves** one by **UUID**.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/locations/\{uuid\}/translations              | **Retrieves** all translations. |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/locations/\{uuid\}/translations/\{language\} | **Retrieves** one translation.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/locations/random                             | **Retrieves** one random.       |

## Schema

Returns a json with the following stucture:

| Field                                                         | Data Type      |
| :------------------------------------------------------------ | :------------- |
| uuid                                                          | UUID           |
| href                                                          | String         |
| name [[!badge variant="info" text="Filter"]](#filters)        | String         |
| description [[!badge variant="info" text="Filter"]](#filters) | String         |
| thumbnail                                                     | String         |
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
| name        | `?name=Lorem`        |
| description | `?description=Lorem` |
