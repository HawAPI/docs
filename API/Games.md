---
label: Games
icon: rocket
---

# Games

Fetches a list of games.

## Options

| Method                                | Url                                                           | Description                     |
| :------------------------------------ | :------------------------------------------------------------ | :------------------------------ |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/games                                    | **Retrieves** all.              |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/games/\{uuid\}                           | **Retrieves** one by **UUID**.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/games/\{uuid\}/translations              | **Retrieves** all translations. |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/games/\{uuid\}/translations/\{language\} | **Retrieves** one translation.  |
| [!badge variant="primary" text="GET"] | /api/{{api_version}}/games/random                             | **Retrieves** one random.       |

## Schema

Returns a json with the following stucture:

| Field                                                          | Data Type      |
| :------------------------------------------------------------- | :------------- |
| uuid                                                           | UUID           |
| href                                                           | String         |
| stores [[!badge variant="info" text="Filter"]](#filters)       | List\<String\> |
| modes [[!badge variant="info" text="Filter"]](#filters)        | List\<String\> |
| tags [[!badge variant="info" text="Filter"]](#filters)         | List\<String\> |
| name [[!badge variant="info" text="Filter"]](#filters)         | String         |
| genres [[!badge variant="info" text="Filter"]](#filters)       | List\<String\> |
| platforms [[!badge variant="info" text="Filter"]](#filters)    | List\<String\> |
| publishers [[!badge variant="info" text="Filter"]](#filters)   | List\<String\> |
| developers [[!badge variant="info" text="Filter"]](#filters)   | List\<String\> |
| release_date [[!badge variant="info" text="Filter"]](#filters) | Date           |
| website                                                        | String         |
| playtime [[!badge variant="info" text="Filter"]](#filters)     | Integer        |
| trailer                                                        | String         |
| age_rating [[!badge variant="info" text="Filter"]](#filters)   | String         |
| thumbnail                                                      | String         |
| images                                                         | List\<String\> |
| sources                                                        | List\<String\> |
| created_at                                                     | Date           |
| updated_at                                                     | Date           |

## Filters

!!!info Info
It's possible to use `sort` and `order` too. \
See [Filters](../Guides/Filters.md)
!!!

| Field        | Example                              | Modification |
| :----------- | :----------------------------------- | :----------: |
| name         | `?name=Lorem`                        |    EQUALS    |
| genres       | `?genres=:genre1,genre2`             |      IN      |
| stores       | `?stores=:store1,store2`             |      IN      |
| modes        | `?modes=:mode1,mode2`                |      IN      |
| tags         | `?tags=:tag1,tag2`                   |      IN      |
| platforms    | `?platforms=:platform1,platform2`    |      IN      |
| publishers   | `?publishers=:publisher1,publisher2` |      IN      |
| developers   | `?developers=:developer1,developer2` |      IN      |
| release_date | `?release_date=2001-01-01`           |    EQUALS    |
| playtime     | `?playtime=>18000000`                | GREATER_THAN |
| age_rating   | `?age_rating=16+`                    |    EQUALS    |

## Example

> [!badge variant="primary" text="GET"] /api/{{api_version}}/games/random

```json
{
  "uuid": "00c0d5d4-4ba6-4f63-9062-8c1c4cb37f88",
  "href": "/api/v1/games/00c0d5d4-4ba6-4f63-9062-8c1c4cb37f88",
  "sources": [
    "https://www.igdb.com/games/stranger-things-the-game",
    "https://rawg.io/games/stranger-things-the-game"
  ],
  "thumbnail": "https://s6.imgcdn.dev/x3vyN.jpg",
  "name": "Stranger Things: The Game",
  "description": "Join Hopper and the kids for bruising missions around Hawkins - and the Upside Down - in this stylized retro adventure filled with collectibles. It's 1984 all over again. Experience an action adventure game just like the ones our heroes would have played back in the day. Explore Hawkins and its surroundings. See your favorite locations like Mirkwood Forest and Hawkins Lab. Uncover exciting areas you've never seen before! Solve puzzles with the unique abilities of each character. Lucas can nail anything with his Wrist Rocket. Nancy has an entire collection of bats to swing this time. Collect all the Eggos and gnomes you can lay your hands on. You never know what they might unlock.",
  "language": "en-US",
  "platforms": ["Android", "iOS"],
  "stores": [
    "https://play.google.com/store/apps/details?id=com.netflix.NGP.StrangerThings",
    "https://apps.apple.com/us/app/stranger-things-1984/id1574739824"
  ],
  "modes": ["Single Player"],
  "genres": ["Adventure", "Role-Playing (RPG)"],
  "publishers": ["BonusXP", "Netflix"],
  "developers": ["BonusXP"],
  "website": "https://bonusxp.com/games/stranger-things-the-game/",
  "tags": [
    "Pixel Graphics",
    "Retro",
    "Dungeons",
    "RPG-Adventure",
    "Sci-Fi",
    "Side-Quests"
  ],
  "trailer": "https://www.youtube.com/watch?v=OthEKbkPftk",
  "images": [
    "https://cdn.mobilesyrup.com/wp-content/uploads/2017/10/stranger-things-the-game-3.jpg",
    "https://cdn.mobilesyrup.com/wp-content/uploads/2017/10/stranger-things-the-game-2.jpg",
    "https://cdn.mobilesyrup.com/wp-content/uploads/2017/10/stranger-things-the-game-1.jpg",
    "https://assets1.ignimgs.com/2019/03/20/stranger-things-3-game---button-fin-1553102079523.jpg",
    "https://oceanofgamer.com/wp-content/uploads/2019/07/Stranger-Things-3-The-Game-Free-Download-1.jpg",
    "https://oceanofgamer.com/wp-content/uploads/2019/07/Stranger-Things-3-The-Game-Free-Download-2.jpg"
  ],
  "created_at": "2023-07-25T20:34:31.68",
  "updated_at": "2023-07-25T20:34:31.68",
  "age_rating": "16+",
  "release_date": "2017-10-04"
}
```
