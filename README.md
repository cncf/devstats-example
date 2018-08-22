# Example DevStats deployment - Homebrew

This is installed [here](http://147.75.97.234:3001), it uses neither DNS nor SSL.

It runs on Ubuntu 18.04 LTS on an ARM64 architecture.

- To install: `vim INSTALL_UBUNTU18.md`.
- To deploy use: `PG_PASS=... PG_PASS_RO=... PG_PASS_TEAM=... ./deploy.sh`.
- To run sync manually (update since last run without cron) use: `PG_PASS=... ./run.sh`.
- To run sync from cron copy `devstats.sh` to your PATH and install cron via `crontab -e` using `crontab` file as an example (changing PATH, passwords etc.).
- To start grafana process (for example after server restart) run `./grafana.sh &`.

# Other projects

- Follow `SETUP_OTHER_PROJECT.md`.
