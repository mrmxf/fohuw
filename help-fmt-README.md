# Modular Help System

This modular help system provides consistent documentation for Hugo partials and shortcodes across the site.

## Components

### Core Modules

| Module | Purpose | Required Data |
|--------|---------|---------------|
| `hw-tk/help-card.html` | Main wrapper card | `title`, `color` (optional) |
| `help-fmt-header.html` | Usage syntax | `shortcode`, `type`, `params` |
| `hw-tk/help-description.html` | Description text | `description`, `notes` (optional) |
| `help-fmt-params.html` | Parameter list | `params` array |
| `help-fmt-examples.html` | Code examples | `examples` array |
| `help-fmt-notes.html` | Additional info | `notes`, `warnings` (optional) |

### Usage Pattern

```html
{{- /* Include common help styles */ -}}
{{ partial "hw-tk/help-tk.html" . }}

{{- /* Define data structures */ -}}
{{- $cardData := dict "title" "{{&lt; shortcode &gt;}}" "color" "blue" "Inner" "" -}}
{{- $headerData := dict "shortcode" "gallery" "type" "shortcode" "params" [...] -}}
{{- $descriptionData := dict "description" "..." "notes" [...] -}}
{{- $paramsData := dict "params" [...] -}}
{{- $examplesData := dict "examples" [...] -}}
{{- $notesData := dict "notes" [...] "warnings" [...] -}}

{{- /* Build content string */ -}}
{{- $content := "" -}}
{{- $content = printf "%s%s" $content (partial "hw-tk/help-header.html" $headerData) -}}
{{- $content = printf "%s%s" $content (partial "hw-tk/help-description.html" $descriptionData) -}}
{{- $content = printf "%s%s" $content (partial "hw-tk/help-params.html" $paramsData) -}}
{{- $content = printf "%s%s" $content (partial "hw-tk/help-examples.html" $examplesData) -}}
{{- $content = printf "%s%s" $content (partial "hw-tk/help-notes.html" $notesData) -}}

{{- /* Render final card */ -}}
{{- $cardData = merge $cardData (dict "Inner" $content) -}}
{{- partial "hw-tk/help-card.html" $cardData -}}
```

## Data Structures

### Parameters Array
```go
"params" (slice
  (dict
    "name" "from"           // parameter name
    "type" "string"         // string|integer|boolean|path
    "required" true         // true|false
    "description" "..."     // markdown description
    "default" "gallery"     // default value (optional)
    "values" (slice "a" "b") // possible values (optional)
  )
)
```

### Examples Array
```go
"examples" (slice
  (dict
    "description" "Basic usage"    // markdown description
    "code" "{{&lt; shortcode &gt;}}"  // HTML-encoded code
    "note" "Additional info"       // markdown note (optional)
  )
)
```

## File Naming Convention

- **Shortcodes**: `layouts/shortcodes/NAME.html` → `layouts/shortcodes/NAME.help.html`
- **Main partials**: `layouts/partials/NAME.html` → `layouts/partials/NAME.help.html`
- **Tool partials**: `layouts/_partials/tool/NAME.html` → `layouts/_partials/tool/NAME.help.html`
- **Template partials**: `layouts/_partials/tmpl/NAME.html` → `layouts/_partials/tmpl/NAME.help.html`

## CSS Classes

The system uses consistent CSS classes defined in `help-tk.html`:

- `.hw-help` - Main help container
- `.param` - Parameter names (monospace, maroon)
- `.param-type` - Parameter types (monospace, blue)
- `.hw-help code` - Code snippets (olive)

## Color Schemes

Standard Fomantic UI colors for different types:
- **Orange**: General partials
- **Blue**: Gallery/media partials
- **Green**: Interactive partials (SMS, forms)
- **Red**: Warning/error partials
- **Purple**: Advanced/technical partials

## Integration

Help files can be accessed via:
1. Direct inclusion: `{{ partial "partials/Gallery.help.html" . }}`
2. Help system: `{{< fo t="help" name="gallery" >}}`
3. Documentation pages: Auto-generated help indices

## Examples

See `Gallery.help.html` and `SmsChat.help.html` for complete working examples.