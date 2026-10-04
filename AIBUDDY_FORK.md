# AIbuddy fork — tracking only

**Upstream:** [cloudflare/cloudflare-os](https://github.com/cloudflare/cloudflare-os)  
**This fork:** [ThomasWDev/cloudflare-os](https://github.com/ThomasWDev/cloudflare-os)

## Why this fork exists

Stay current with Cloudflare OS so we can study **Gatekeepers** (capability
grants, OAuth held outside the agent, audit of observations, **async
approve-with-simulation**) and sandboxed gadgets — then port the *ideas* into
AIbuddy desktop / extension / `@aibuddy/core`.

## What this fork is NOT

- Not a product dependency of AIbuddy (Workers / Durable Objects are not our runtime).
- Not a rebrand or “AIbuddy OS” ship vehicle.
- Not a place to rewrite Cloudflare’s app for MAS / Electron.

Product work lives in `aibuddy-desktop` (issue **#4103**) and related epics
(#3582 sandbox, #3471 shared agent loop). Cite upstream blog + this fork’s
paths in PRs; do not paste large CF source into AIbuddy without license review.

## Stay up to date

Remotes after clone:

```bash
git remote -v
# origin   → ThomasWDev/cloudflare-os
# upstream → cloudflare/cloudflare-os
```

Sync `main` from upstream (ff-only preferred):

```bash
./scripts/aibuddy-sync-upstream.sh
# or:
git fetch upstream
git checkout main
git merge --ff-only upstream/main
git push origin main
```

If ff-only fails, stop and open a PR on this fork (`upstream/main` → `main`) —
do not force-push shared `main`.

## Cadence

Pull upstream at least when working #4103 / sandbox epics, or weekly on a fleet
pass. Prefer reading `packages/workshop-shared/src/gatekeeper.ts` and
`packages/workshop-backend/src/auto-approval.ts` over copying Workers packages.

## License

Upstream is Apache-2.0. Keep LICENSE. Our tracking notes in this file are
AIbuddy ops docs only.
