# mmm_website

Public website for `markmacmahon.com`, built with Hugo and deployed via GitHub Actions.

## Purpose

This repository is publish-only:
- blog posts
- profile/about content
- site templates and styling

Private ideation and editorial working material lives elsewhere.

## Local Workflow

```bash
hugo server -D
```

## Content Checks

```bash
./scripts/check-no-emdash.sh
./scripts/verify-before-push.sh
```

## Deploy

Push to `main` to trigger GitHub Actions Pages deploy.

If you need to trigger a fresh deploy without content changes:

```bash
git commit --allow-empty -m "Trigger GitHub Pages redeploy"
git push
```
