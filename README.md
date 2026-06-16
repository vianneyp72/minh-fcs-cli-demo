# FCS CLI Image Scan Demo

![Image Scan](https://github.com/minh-pham-cs/minh-fcs-cli-demo/actions/workflows/build-scan-push.yml/badge.svg)

Shift-left container image scanning using [CrowdStrike FCS CLI](https://github.com/CrowdStrike/fcs-action) in a GitHub Actions pipeline.

## What it does

1. Builds a container image from a simple Flask app
2. Scans the image with CrowdStrike Falcon Cloud Security
3. Gates the push — only images passing the Image Assessment Policy reach `ghcr.io`
4. Uploads SARIF results to GitHub's Security tab

## Setup

Configure these in your repo settings:

| Type | Name | Value |
|------|------|-------|
| Secret | `FALCON_CLIENT_SECRET` | Your API client secret |
| Variable | `FALCON_CLIENT_ID` | Your API client ID |
| Variable | `FALCON_REGION` | `us-1`, `us-2`, or `eu-1` |

### Required API Scopes

- Falcon Container CLI (Read & Write)
- Falcon Container Image (Read & Write)
- Cloud Security Tools Download (Read)

## Testing the gate

The initial `requirements.txt` pins vulnerable package versions intentionally. The first pipeline run should **fail** and block the push. Update the packages to current versions to see it pass.
