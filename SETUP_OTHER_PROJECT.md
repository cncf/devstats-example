# Setup you own project

This example deployment uses Homebrew project. To run DevStats on the other project do:

- If your project name is for example 'Sample Project' then run `./set_project_name.sh sampleproject 'Sample Project' 'SampleProjectOrd/main_repo'`.
- First parameter is a special lowercased name of your project, second parameter is the original project name, third parameter is a GitHub main repository path.

- In all steps: note that you have a lower-case project name `homebrew` and full name `Homebrew` (for example used as Grafana Org name etc).
- Update `projects.yaml` to contain your new project data, especially: `command_line, start_date, annotation_regexp`.
- Update `devel/deploy_all.sh`, especially `PROJREPO` value.
- Rename `homebrew` folder to `your_project` and update `your_project/psql.sh`.
- Rename `grafana/img/homebrew*` to `grafana/img/your_project*` (provide your own SVG and PNG).
- Rename `grafana/homebrew` to `grafana/your_project` and update files in this directory.
- Rename `grafana/dashboards/homebrew` to `grafana/dashboards/your_project` and update files in this directory.
- Rename `metrics/homebrew` to `metrics/your_project` and update `metrics/your_project/vars.yaml`.
- Rename `scripts/homebrew` to `scripts/your_project` and update `repo_groups.sql` in this directory.
