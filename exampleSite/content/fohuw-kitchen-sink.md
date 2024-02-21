## The `kitchensink` shortcode

Here we list out all the shortcodes and their parameters with a link to the
help. Objects are presented in the same order as the Fomantic website. If a
shortcode does not exist then [contact] us.

In general the shortcodes just gather parameters and send them to a partial.

<a id="card"></a>

### [Card]

The generic card

{{< f/card
    header = "Demo Card"
>}}
The body text can be an Inner and/or in the description field
{{< /f/card >}}

```markdown
{{< f/card
    header = "Demo Card"
>}}
The body text can be an Inner and/or in the description field
{{< /f/card >}}
```

### sitelinks

This shortcode scavenges

```markdwon
{{ partial "sitelinks" }}
```

[Card]:     https://fomantic-ui.com/views/card.html
