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

| Field       | Data Type               |
| :---------- | :---------------------- |
| uuid        | UUID                    |
| href        | String                  |
| title       | String                  |
| description | String                  |
| language    | String                  |
| languages   | List\<String\>          |
| creators    | List\<String\>          |
| thumbnail   | String                  |
| sources     | List\<String\>          |
| data_count  | [DataCount](#datacount) |
| created_at  | Date                    |
| updated_at  | Date                    |

### DataCount

| Field       | Data Type |
| :---------- | :-------- |
| actors      | Int       |
| characters  | Int       |
| episodes    | Int       |
| games       | Int       |
| locations   | Int       |
| seasons     | Int       |
| soundtracks | Int       |

## Example

> [!badge variant="primary" text="GET"] /api/{{api_version}}/overview

```json
{
  "uuid": "90edba4c-4399-4582-847c-833c597b03c1",
  "href": "/api/v1/overview/90edba4c-4399-4582-847c-833c597b03c1",
  "sources": ["https://www.netflix.com/title/80057281"],
  "thumbnail": "https://s6.imgcdn.dev/2rdwu.jpg",
  "title": "Stranger Things",
  "description": "When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces and one strange little girl.",
  "language": "en-US",
  "languages": ["en-US", "pt-BR"],
  "creators": ["Matt Duffer", "Ross Duffer"],
  "data_count": {
    "actors": "13",
    "characters": "13",
    "episodes": "34",
    "games": "3",
    "locations": "32",
    "seasons": "4",
    "soundtracks": "0"
  },
  "created_at": "2023-08-07T15:46:09.091",
  "updated_at": "2023-08-07T15:46:09.091"
}
```
