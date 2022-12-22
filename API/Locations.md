---
label: Locations
icon: location
---

# Locations

Fetches a list of locations.

## Options

| Method                                  | Url                        |  Role   | Description                                    |
| :-------------------------------------- | :------------------------- | :-----: | :--------------------------------------------- |
| [!badge variant="primary" text="GET"]   | /api/v1/locations          |         | **Retrieves** all locations.                   |
| [!badge variant="primary" text="GET"]   | /api/v1/locations/\{uuid\} |         | **Retrieves** one location using its **UUID**. |
| [!badge variant="warning" text="PATCH"] | /api/v1/locations/\{uuid\} |  `MOD`  | **Update** one location using its **UUID**.    |
| [!badge variant="success" text="POST"]  | /api/v1/locations/         | `ADMIN` | **Add** one location.                          |
| [!badge variant="danger" text="DELETE"] | /api/v1/locations/\{uuid\} | `ADMIN` | **Delete** one location using its **UUID**.    |

## Example

+++ JavaScript
TODO: Add sample code
+++

## Schema

Returns a json with the following stucture:

| Field                                                  | Data Type      |
| :----------------------------------------------------- | :------------- |
| uuid                                                   | UUID           |
| href                                                   | String         |
| name [[!badge variant="info" text="Filter"]](#filters) | String         |
| description                                            | String         |
| thumbnail                                              | String         |
| images                                                 | List\<String\> |
| sources                                                | List\<String\> |
| created_at                                             | TIMESTAMP      |
| updated_at                                             | TIMESTAMP      |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field | Example                               |
| :---- | :------------------------------------ |
| name  | `/api/{version}/{item}?name={filter}` |
