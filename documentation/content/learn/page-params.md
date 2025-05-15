---
title:     Page Params
linkTitle: Page Params
date:      2025-05-15
description: params to override the default look
---
{{<fohuw>}} has a number of Page Params that can override default behaviour to give you better control of your pages.
All Page Params are in the Front Matter of a page:

```yaml
---
title:     Sample Page
linkTitle: Sample
date:      2025-05-15
params:
   noIndex: false   # this is the Page Param noIndex documented below
---
...The text in the page...
```

## {{<fohuw>}} Page Param overrides

* `noIndex` - default=`false`<br>
   when `true`, the page will not be show in the sidebar list, nor in the lower fold of an _index.md` page
* `hideChildList`  - default=`false`<br>
   when `true`, an `_index.md` page will hide the child listing at the bottom of the page
