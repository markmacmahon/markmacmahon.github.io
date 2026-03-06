# markmacmahon.com

Personal website and essay series built with [Hugo](https://gohugo.io/). Deployed to GitHub Pages.

## Use this as a template

This site is designed to be cloned and adapted. It has no theme dependency - all layouts and styles are self-contained.

### Prerequisites

- [Hugo](https://gohugo.io/installation/) (extended edition, v0.110+)
- Git

### Quick start

```bash
# Clone the repo
git clone https://github.com/markmacmahon/markmacmahon.github.io.git my-site
cd my-site

# Preview locally
hugo server
```

Open http://localhost:1313/ in your browser. Hugo live-reloads on every file change.

### Make it yours

1. **Edit `config.toml`** - change `baseURL`, `title`, `description`, and social links
2. **Replace `static/images/`** - swap in your own profile photo
3. **Replace `static/favicon.png` and `static/apple-touch-icon.png`** - your own favicon
4. **Update `static/llms.txt`** - your own bio and post index (for AI crawlers)
5. **Update `static/robots.txt`** - change the sitemap URL to your domain
6. **Edit `layouts/index.html`** - update the homepage bio, links, and social profiles
7. **Delete the example posts** in `content/posts/` and create your own

### Create a new post

```bash
mkdir content/posts/my-post-slug
```

Create `content/posts/my-post-slug/index.md`:

```toml
+++
title = 'My Post Title'
date = 2026-01-01T10:00:00Z
slug = 'my-post-slug'
draft = false
description = 'A one-line subtitle that appears below the title.'
[sitemap]
  priority = 0.8
[params]
  series_number = 1
  song_title = 'Song Name'
  song_artist = 'Artist'
  song_year = '2000'
  song_url = 'https://open.spotify.com/track/...'
+++

Your content here in markdown.
```

- `series_number` controls the order on the homepage (01, 02, 03...)
- `description` renders as a subtitle on the post page and in social sharing previews
- `song_title/artist/year/url` are optional - they add a Spotify link at the bottom of the post
- Add `coming_soon = true` under `[params]` for teaser posts (shows "Coming soon" instead of a date)
- Drop images in the same folder as `index.md` and reference them in markdown or use the gallery shortcode

### Image gallery

Use the built-in gallery shortcode for horizontal scroll galleries:

```markdown
{{</* gallery */>}}
{{</* gallery-item src="photo1.jpg" alt="Description" caption="Caption text" */>}}
{{</* gallery-item src="photo2.jpg" alt="Description" caption="Caption text" */>}}
{{</* /gallery */>}}
```

### Social sharing images

Add `og_image` under `[params]` in your post's front matter to set a custom image for social sharing:

```toml
[params]
  og_image = '/posts/my-post-slug/my-image.jpg'
```

If not set, the site falls back to the profile photo.

## Project structure

```
config.toml                  # Site configuration
content/
  _index.md                  # Homepage content
  posts/
    _index.md                # Posts list page
    my-post/
      index.md               # Post content
      image.jpg              # Post images (co-located)
layouts/
  _default/
    baseof.html              # Base template (head, meta tags, JSON-LD)
    single.html              # Post template
    list.html                # List template
    rss.xml                  # Custom RSS feed
  index.html                 # Homepage template
  shortcodes/
    gallery.html             # Gallery wrapper
    gallery-item.html        # Gallery item
static/
  css/site.css               # All styles (no framework)
  images/                    # Site-level images
  favicon.png                # Favicon
  apple-touch-icon.png       # iOS icon
  robots.txt                 # Crawler rules
  llms.txt                   # AI crawler summary
```

## What's included

- **SEO**: Open Graph, Twitter Card, JSON-LD (Article + WebSite schemas), sitemap, canonical URLs
- **AI-friendly**: `robots.txt` with explicit permissions for GPTBot, ClaudeBot, PerplexityBot, etc. `llms.txt` for AI agent discovery
- **RSS**: Full-content feed with author and series numbering
- **Series numbering**: Posts ordered by `series_number`, displayed as 01, 02, 03
- **Post navigation**: Previous/next links at the bottom of each post
- **Song signatures**: Optional Spotify link footer on each post
- **Gallery shortcode**: CSS scroll-snap horizontal image gallery
- **Responsive**: Mobile-first, no JavaScript required (except analytics)
- **No dependencies**: No theme, no npm, no build tools beyond Hugo

## Content checks

```bash
# Check for em dashes (style rule: use hyphens instead)
./scripts/check-no-emdash.sh

# Full pre-push verification
./scripts/verify-before-push.sh
```

## Deploy

Push to `main` to trigger the GitHub Actions deploy to GitHub Pages.

For a custom domain, update `baseURL` in `config.toml` and add a `CNAME` file to `static/`.

## License

Code (layouts, CSS, config) is MIT licensed. Content (posts, images, podcast data) is copyright Mark MacMahon, all rights reserved. See [LICENSE](LICENSE) for details.
