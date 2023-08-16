---
label: Actor by character
icon: square
---

# Actor by character

How to request actor from specific character

## Terminal

### Equals

```sh Terminal
curl {{url}}/api/{{api_version}}/actors?character=/api/v1/characters/ef69d278-76be-478e-a087-c81071cb83c3
```

### Like

```sh Terminal
curl {{url}}/api/{{api_version}}/actors?character=*ef69d278-76be-478e-a087-c81071cb83c3
```
