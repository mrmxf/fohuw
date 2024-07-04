---
title:     FoHuW
linkTitle: FoHuW
weight:    1
---

The {{%fohuw%}} theme is based on [Docsy][1] and loosely tracks
it. The theme was designed so that [sveltekit apps][2] and other components could
simply use the [Fomantic-ui][3] look and feel without too much re-engineering.

Various wrapped versions of the fomantic components have been created and,
in general, they are implemented as `partials` with corresponding `shortcodes`
that can be directly used in body text.

The rough directory structure (using an edited `bash tree` command) is:

```sh
├── assets
│   ├── icons
│   │   └──      #various icons for fohuw and other sites
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
│   └── history.yaml    # release history for your site
├── i18n
│   └──                 # @TODO internationalization (Docy originated)
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
│   │   ├── docsy
│   │   │   └──         # unaltered docsy partials used in templates
│   │   ├── f
│   │   │   └──         # fomantic wrappers
│   │   ├── hooks
│   │   │   └──         # hooks for site specific overrides
│   │   ├── my
│   │   │   └──         # hooks for site specific overrides
│   │   ├── o
│   │   │   └──         # objects made from multiple fomantic elements
│   │   └──             # Docsy type partials updated to use fomantic
│   ├── shortcodes
│   │   ├── f
│   │   │   └──          # shortcode fomantic wrappers
│   │   ├── fohuw.html   # style FoHuW text
│   │   ├── o
│   │   │   └──          # shortcode objects made from multiple fomantic elements
│   │   └──              # Docsy shortcodes updated to use fomantic
│   ├── swagger
│   │   └──              # swagger partials from Docsy
├── LICENSE
├── package.json         # @TODO - update for fomantic build
├── postcss.config.js    # @TODO - update for fomantic build
├── README.md
├── static
│       └──              # @TODO - update & remove legacy cruft
└── theme.toml           # @TODO - update for clean install
```

[1]: https://www.docsy.dev/
[2]: https://kit.svelte.dev/
[3]: https://fomantic-ui.com/
