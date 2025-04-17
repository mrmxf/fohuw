# FoHuW Fomantic-ui Hugo Wrapper

FoHuW is a [Hugo][01] theme inspired by [Docsy][02] using [Fomantic-UI][03]. It
is for technical documentation sets, sites requiring structured navigation,
showcase features, embedded apps, and more. Release information is in
[data/releases.yaml][04]

This theme was started as a fork of [Docsy][02] and then changed to allow less
technical, lazier writers to guess at syntax is actively being maintained.

The goal is to have a self documenting set of shortcodes that can be guessed.

## Documentation & sample site

Fork the repo. Either install [clog][05] or use the bash snippets in
`clogrc/clog.config.yaml`. The following manual command should also work in
a linux shell (bash, zsh, sh on linux mac or windows WSL)

```sh
    # make a symbolic link to the example site
    ln -s documentation/content content
    # run the hugo server
    hugo server --port=1313 --buildDrafts --buildFuture --buildExpired --cleanDestinationDir
    # delete the symbolic link
    rm content
```

_ _ _

## Prerequisites

The following are basic prerequisites for using Docsy in your site:

- Install a recent release of the Hugo "extended" version. If you install from
  the [Hugo release page](https://github.com/gohugoio/hugo/releases), make sure
  you download the `_extended` version which supports SCSS.

- Install `PostCSS` so that the site build can create the final CSS assets. You
  can install it locally by running the following commands from the root
  directory of your project:

  ```console
  npm install --save-dev autoprefixer
  npm install --save-dev postcss-cli
  ```

  Starting in [version 8 of `postcss-cli`](https://github.com/postcss/postcss-cli/blob/master/CHANGELOG.md),
  you must also separately install `postcss`:

  ```bash
  npm install -D postcss
  ```

Any additional prerequisites depend on the [installation option](https://www.FoHuW.dev/docs/get-started/#installation-options)
you choose. We recommend using Docsy as a Hugo module, which requires that
you have the `go` language installed in addition to Hugo and PostCSS.

For complete prerequisites and instructions, see our [Get started guides](https://www.docsy.dev/docs/get-started/).

## Example and usage

You can find an example project that uses Docsy in the [Docsy Example Project
repo](https://github.com/google/docsy-example).The Docsy Example Project is
hosted at [example.docsy.dev](https://example.docsy.dev). For
real-life examples of sites that use Docsy (and their source repos), see our
[Examples](https://www.docsy.dev/docs/examples/) page.

To use the Docsy theme for your own site:

- (Recommended) Use the [example
  project](https://github.com/google/docsy-example), which includes the Docsy
  theme as a Hugo module, as a template to create your project. You can customize
  this pre-configured basic site into your own Docsy themed site. [Learn
  more...](https://github.com/google/docsy-example)

- Add Docsy to your existing Hugo site. You can
  add Docsy as a Hugo module, as a Git submodule, or clone the Docsy theme into your
  project.

See the [Get started guides](https://www.docsy.dev/docs/get-started/)
for details about the various usage options.

## Contributing ![GitHub](https://img.shields.io/github/contributors/google/docsy)

Please read
[CONTRIBUTING.md](https://github.com/google/docsy/blob/main/CONTRIBUTING.md)
for details on our code of conduct, and the process for submitting pull requests
to us. See also the list of
[contributors](https://github.com/google/docsy/graphs/contributors) who
participated in this project.

## License ![GitHub](https://img.shields.io/github/license/google/docsy)

This project is licensed under the Apache License 2.0 - see the
[LICENSE.md](https://github.com/google/docsy/blob/main/LICENSE) file for
details

[01]:  https://gohugo.io             "Hugo"
[02]:  https://docsy.dev             "Docsy"
[03]:  https://fomantic-ui.com       "Fomantic-Ui"
[04]:  data/history.yaml             "Releases"
[05]:  https://github.com/mrmxf/clog "https://github.com/mrmxf/clog/releases"

[Deploys]: https://app.netlify.com/sites/docsydocs/deploys
[Netlify]: https://netlify.com
