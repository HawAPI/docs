---
icon: filter
order: 1
---

# Filters

All endpoints supports this filters:

| Field | Example                                | Options                                         |
| :---- | :------------------------------------- | :---------------------------------------------- |
| order | `/api/{version}/{item}?order={filter}` | E.g: [Actors filters](../API/Actors.md#filters) |
| sort  | `/api/{version}/{item}?sort={filter}`  | `ASC` or `DESC`                                 |

!!!info Info
You can use both `order` and `sort` together.

E.g: /api/v1/actors/**?sort=ASC&order=first_name**
!!!
