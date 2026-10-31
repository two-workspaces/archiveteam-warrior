# Deploy and Host an ArchiveTeam Warrior on Railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template/archiveteam-warrior-node?referralCode=sLjDXb&utm_medium=integration&utm_source=button&utm_campaign=archiveteam-warrior-node)

The [ArchiveTeam Warrior](https://wiki.archiveteam.org/index.php/ArchiveTeam_Warrior) is the official volunteer client of [ArchiveTeam](https://archiveteam.org/), the group that saves websites before they shut down or delete their content. Your Warrior asks ArchiveTeam's tracker for work, downloads pages, posts and media from the site being rescued, and uploads them so they end up in the Internet Archive's Wayback Machine. This template runs the official image always-on, with a password-protected dashboard and your nickname on the public leaderboard.

## About Hosting an ArchiveTeam Warrior

One service, no database. The official `warrior-dockerfile` image runs the Warrior and each project's grab tools in the same container, with no Docker daemon needed. The Warrior keeps its own code and projects up to date; a redeploy starts fresh and installs the current project again in a few seconds.

The dashboard on your Railway domain shows what it is working on, live logs and your totals. It sits behind `HTTP_USERNAME` and `HTTP_PASSWORD`, so strangers can't change your settings.

## Common Use Cases

- Donate spare bandwidth to save sites and communities that are about to disappear
- Join an ArchiveTeam "warrior project" push for a shutdown everyone is talking about
- Run a set-and-forget contributor that always works on the most urgent project
- Climb the tracker leaderboard under your own nickname

## Dependencies for ArchiveTeam Warrior Hosting

- None. Pick a nickname for the leaderboard.

### Deployment Dependencies

- [ArchiveTeam Warrior wiki](https://wiki.archiveteam.org/index.php/ArchiveTeam_Warrior)
- [Warrior Docker image](https://github.com/ArchiveTeam/warrior-dockerfile)
- [ArchiveTeam tracker and leaderboards](https://tracker.archiveteam.org/)

### Implementation Details

**First use:**

1. Enter a nickname as `DOWNLOADER` when you deploy.
2. Open the Warrior's Railway domain and log in with `HTTP_USERNAME` and the generated `HTTP_PASSWORD` from the Variables tab.
3. It starts on the project ArchiveTeam marks as most urgent (`SELECTED_PROJECT=auto`). Search your nickname on [tracker.archiveteam.org](https://tracker.archiveteam.org/) to see your items.

**Settings:** `CONCURRENT_ITEMS` (1-6) sets how many items run at once. To stick to one project, set `SELECTED_PROJECT` to its name from the dashboard's project list.

Notes and limits:

- Throughput depends on the project. Some sites limit or block cloud IP ranges, so a project can run slowly from Railway; `auto` moves you to where help is needed.
- Railway bills outbound network traffic, and the Warrior uploads everything it downloads. Watch your usage, and lower `CONCURRENT_ITEMS` to slow it down.
- ArchiveTeam asks volunteers not to run Warriors through proxies or VPNs, and not to modify the grab scripts. This template runs the official image unmodified.
- Projects use little RAM at rest, but installing a project briefly uses more; a 0.5 GB service is enough.

## Why Deploy an ArchiveTeam Warrior on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying an ArchiveTeam Warrior on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.
