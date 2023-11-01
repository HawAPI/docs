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
| birth_date [[!badge variant="info" text="Filter"]](#filters)  | Date                                     |
| death_date [[!badge variant="info" text="Filter"]](#filters)  | Date                                     |
| gender [[!badge variant="info" text="Filter"]](#filters)      | Byte ([Why?](../Guides/ISO-IEC-5218.md)) |
| nationality [[!badge variant="info" text="Filter"]](#filters) | String                                   |
| seasons                                                       | List\<String\>                           |
| awards                                                        | List\<String\>                           |
| character [[!badge variant="info" text="Filter"]](#filters)   | String                                   |
| thumbnail                                                     | String                                   |
| images                                                        | List\<String\>                           |
| sources                                                       | List\<String\>                           |
| created_at                                                    | Date                                     |
| updated_at                                                    | Date                                     |

## Filters

| Field       | Example                  | Modification |
| :---------- | :----------------------- | :----------: |
| first_name  | `?first_name=Lorem`      |    EQUALS    |
| last_name   | `?last_name=Ipsum`       |    EQUALS    |
| nicknames   | `?nicknames=ipsum,lorem` |    EQUALS    |
| birth_date  | `?birth_date=1888-01-01` |    EQUALS    |
| death_date  | `?death_date=2000-12-01` |    EQUALS    |
| gender      | `?gender=0`              |    EQUALS    |
| nationality | `?nationality=American`  |    EQUALS    |
| character   | `?character=*<uuid>`     |     LIKE     |

## Example

> [!badge variant="primary" text="GET"] /api/{{api_version}}/actors/random

```json
{
  "uuid": "ffa1c1a1-7242-4967-a295-ace92d2bd32f",
  "href": "/api/v1/actors/ffa1c1a1-7242-4967-a295-ace92d2bd32f",
  "sources": [
    "https://www.netflix.com/tudum/stranger-things/cast",
    "https://en.wikipedia.org/wiki/David_Harbour"
  ],
  "thumbnail": "https://s6.imgcdn.dev/xeo5T.png",
  "gender": 1,
  "nationality": "American",
  "seasons": [
    "/api/v1/seasons/3b980ad3-aef8-4663-a7a9-64cb4979500a",
    "/api/v1/seasons/1ff70278-fe7c-4619-9e37-91820eaa37b9",
    "/api/v1/seasons/b956e444-8489-4bf9-9dd0-fb6b7683638a",
    "/api/v1/seasons/4bae1f7c-04ff-40d7-a161-83d8608fbe1c"
  ],
  "character": "/api/v1/characters/48bde91d-aa72-465d-ba6d-f8625009561d",
  "socials": [
    {
      "social": "Instagram",
      "handle": "@dkharbour",
      "url": "https://www.instagram.com/dkharbour/"
    },
    {
      "social": "Twitter",
      "handle": "@DavidKHarbour",
      "url": "https://www.twitter.com/DavidKHarbour"
    }
  ],
  "images": [
    "https://cdn.britannica.com/53/244253-050-579D9771/Actor-David-Harbour-2022.jpg",
    "https://m.media-amazon.com/images/M/MV5BZTc5ODUzMDAtZGFhZS00NmExLTlhYWYtZDY0NGI2MGMwYTIzXkEyXkFqcGdeQXVyODY0MzQyODc@._V1_.jpg",
    "https://static.wikia.nocookie.net/marvelcinematicuniverse/images/7/7b/David_Harbour.jpg",
    "https://media.gq-magazine.co.uk/photos/62c2aac01e96714691fd64ed/master/w_1600%2Cc_limit/July%252004%2520-%2520David%2520Harbour_Online5.jpg"
  ],
  "created_at": "2023-07-27T11:48:58.78",
  "updated_at": "2023-07-27T11:48:58.78",
  "first_name": "David",
  "last_name": "Harbour",
  "birth_date": "1975-04-10"
}
```
