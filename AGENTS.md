# mmm_website Agent Guide

This repository is public and publish-only.

## Rules

- Keep content public-safe and publication-ready.
- Do not include private ideation notes, transcripts, or strategy drafts from other repos.
- Markdown-first workflow for all posts and pages.
- No em dashes. Use normal hyphens.

## Content Structure

- `content/posts/` published essays
- `content/about/` profile/about page
- `static/` assets

## Checks

Run:

```bash
./scripts/check-no-emdash.sh
./scripts/verify-before-push.sh
```

Hooks:
- `.githooks/pre-commit`
- `.githooks/pre-push`
