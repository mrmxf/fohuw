---
title:     FoHuW
linkTitle: FoHuW
weight:    1
---

{{<fohuw>}} theme is inspired by [Docsy][1] and uses [Fomantic-ui][3] for look
and feel without too much re-engineering.

Various wrapped versions of the fomantic components have been created and,
in general, they are implemented as `partials` with corresponding `shortcodes`
that can be directly used in body text.

## Project README

{{< fo  t = "fetch" from = "https://raw.githubusercontent.com/mrmxf/fohuw/refs/heads/main/README.md"  />}}

## Folder Organisation

The rough directory structure (try `bash tree` from a terminal) is:

```sh
├── assets
│   ├── icons
│   │   └──      #various icons and assets rendered by fohuw
│   ├── js
│   │   └──      # bundled JS - some is used by Docsy components
│   ├── json
│   │   └──      # generated offline-search-index.json
│   ├── scss
│   │   └──      # @TODO - put the fomantic build environment here
│   ├── snippets
│   │   └──      # handy snippets
│   └── stubs
├── config
│   └── _default
│       ├── hugo.yaml   # hugo build and site control
│       ├── module.yaml # module control
│       └── params.yaml # .Site.Params
├── data
│   └── releases.yaml   # release history for your site
├── i18n
│   └──                 # @TODO internationalization (Docsy originated)
├── layouts
│   ├── 404.html        # error page
│   ├── blog
│   │   └──             # type="blog" templates
│   ├── community
│   │   └──             # type="community" templates
│   ├── _default
│   │   └──             # default templates
│   ├── docs
│   │   └──             # type="docs" templates - for technical documentation
│   ├── faq
│   │   └──             # type="faq" templates - rename to "iframe"
│   ├── home.html       # home page
│   ├── partials
│   │   ├── dbg
│   │   │   └──         # some debug partials for when your brain hurts
│   │   ├── fo
│   │   │   └──         # fomantic wrappers
│   │   ├── hooks
│   │   │   └──         # hooks for site specific overrides
│   │   ├── my
│   │   │   └──         # partialsthat are site specific
│   │   └──             # Docsy partials updated to use fomantic
│   ├── shortcodes
│   │   ├── fo.html      # all the fomantic shortcode of different types
│   │   ├── fohuw.html   # style FoHuW text
│   │   └──              # Docsy shortcodes updated to use fomantic
│   ├── swagger
│   │   └──              # swagger partials from Docsy
├── LICENSE
├── package.json         # @TODO - update for fomantic sass build
├── postcss.config.js    # @TODO - update for fomantic sass build
├── README.md
├── static
│       └──              # @TODO - update & remove legacy cruft
└── theme.toml           # @TODO - update for clean install
```

[1]: https://www.docsy.dev/
[2]: https://kit.svelte.dev/
[3]: https://fomantic-ui.com/
