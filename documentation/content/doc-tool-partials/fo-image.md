---
title:       fo t="image"
date:        2025-02-25
description: include a markdownified page.

summary: |
  include an image. use the media tool if you cannot be certain

examples: |
  Some examples
---
Deprecated

Usage:
```hugo  {linenos=inline}
{{&#x25; fo t = "image" src = "path/to/img" alt = "demo image" text = "optional caption" /%}}
```

{{< fo
  t = "image"
  src = "rexy.svg"
  alt = "metarex logo"
  url = "https://metarex.media"
  cap = "The clickable metarex media logo"
/>}}
