# Docker-stream-cron
Docker image to copy livestreams to remote gcp.

Usage
`<docker run -e URL=sample-link  cron-stream:0.3>`

where `<sample-link>` is the yt livestream you wish to download

Run example

docker run -e URL=https://www.youtube.com/watch?v=XJfpbcIyETo cron-stream:0.3
