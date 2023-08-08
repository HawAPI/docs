---
icon: search
order: 1
---

# Overview

Fetches the API overview.

## Options

You can use the [Try it (Overview)]({{url}}/try-it/#/overview) section to test endpoints request

| Method                                | Url                                                     | Description                     |
| :------------------------------------ | :------------------------------------------------------ | :------------------------------ |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/overview                           | **Retrieves** overview.         |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/overview/translations              | **Retrieves** all translations. |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/overview/translations/\{language\} | **Retrieves** one translation.  |

## Schema

Returns a json with the following stucture:

| Field       | Data Type      |
| :---------- | :------------- |
| uuid        | UUID           |
| href        | String         |
| title       | String         |
| description | String         |
| language    | String         |
| languages   | List\<String\> |
| creators    | List\<String\> |
| thumbnail   | String         |
| sources     | List\<String\> |
| created_at  | Date           |
| updated_at  | Date           |
