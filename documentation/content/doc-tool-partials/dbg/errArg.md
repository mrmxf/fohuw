---
title:       errArg
date:        2025-02-25
description: a debug tool to list errors while running hugo server

summary: |
  log a warning to the console and put a red banner on the page to show an error

---
TODO...

The fohuw log warnings can be silenced by adding the following array to your hugo.yaml:

```yaml
ignoreLogs:
- fohuw
```

TODO - describe the dict

```html  {linenos=inline}
{{/* partial 'tool/dbg-err' (dict "p" $partial-name "a" $arg "m" $message) */}}
```