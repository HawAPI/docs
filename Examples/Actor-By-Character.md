---
label: Actor by character
icon: square
---

# Actor by character

How to request actor from specific character

## Terminal

### Equals

```sh Terminal
curl {{url}}/api/{{api_version}}/actors?character=/api/v1/characters/50fa9f0c-65bc-451f-90a2-8b864a21bef0
```

### Like

```sh Terminal
curl {{url}}/api/{{api_version}}/actors?character=*50fa9f0c-65bc-451f-90a2-8b864a21bef0
```
