---
title:       tmpl-partials
linkTitle:   tmpl-partials
date:        2025-04-14
description: the page layout templates
summary:     partials/tmpl/ structure the HTML for different page types

menus: main
---

## `layouts/<layout-name>`

This is folder where specific page layouts are found:

* `_default`  the fallback layout - root of all truth
* `blog`  default for all pages in `content/blog`
* `docs`  default for all pages in `content/docs`
* `faq`  default for all pages in `content/faq`

You can override the layout of a page with the following frontmatter:

```yaml  {linenos=inline}
layout:  blog   # use a standard layout or define your own
```
