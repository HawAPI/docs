---
icon: filter
order: 1
---

# Filters

All filters supported by all endpoints

## Common

| Field    | Example                    | Default | Options            |
| :------- | :------------------------- | :------ | :----------------- |
| sort     | `[..]?sort=first_name,ASC` | `---`   | field, ASC or DESC |
| page     | `[..]?page=1`              | `1`     | 1..X               |
| size     | `[..]?size=12`             | `10`    | 1..20              |
| language | `[..]?language=en-US`      | `en-US` | [I18N](./I18N.md)  |

Usage Example:

```
curl {{url}}/api/{{api_version}}/actors?language=en-US&size=10&page=1&sort=first_name,DESC
```

!!!info Info
The `size` option, by default, is set to 10 and **LIMITED** to 20 (Per page).
!!!

## Pagination

The response pagination is enable by default with `size=10` and `page=1`.

You can checkout all informations on response `header`.

| Header                  | Description                                          |
| :---------------------- | :--------------------------------------------------- |
| X-Pagination-Page-Index | Current page index                                   |
| X-Pagination-Page-Size  | Amount of items inside each page                     |
| X-Pagination-Page-Total | Total pages(Will be overwrite if `size` is provided) |
| X-Pagination-Item-Total | Total items                                          |

## Modification

The request can be modified/flexible using the modificaton symbols.

| Modification         |   Type(s)    | Symbol |
| :------------------- | :----------: | :----: |
| LIKE                 |      \*      |   \*   |
| NOT_LIKE             |      \*      |  !\*   |
| BETWEEN              | Number, Date |   ::   |
| NOT_IN               |      \*      |   !:   |
| IN                   |      \*      |   :    |
| GREATER_OR_EQUALS_TO | Number, Date |   >=   |
| LESS_OR_EQUALS_TO    | Number, Date |   <=   |
| GREATER_THAN         | Number, Date |   >    |
| LESS_THAN            | Number, Date |   <    |
| NOT_EQUALS           |      \*      |   !    |
| EQUALS               |      \*      |        |

Usage Example:

> All characters with **last name `like` Wheeler**, **gender `equals to` 1** and **birth date `greater or equals to` 1967-01-01**

```
curl {{url}}/api/{{api_version}}/characters?last_name=*Wheeler&gender=1&birth_date=>=1967-01-01
```
