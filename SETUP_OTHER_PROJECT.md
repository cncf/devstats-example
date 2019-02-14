# Setup you own project

This example deployment uses Homebrew project. To run DevStats on the other project do:

- If your project name is for example 'Sample Project' then run `./set_project_name.sh sampleproject 'Sample Project' 'SampleProjectOrg/main_repo' YYYY-MM-DD`.
- First parameter is a special lowercased name of your project, second parameter is the original project name, third parameter is a GitHub main repository path, fourth parameter is a project start date.
- Update `projects.yaml` to contain your new project data, especially: `command_line, annotation_regexp`. You can set `annotation_regexp` to `''` to get all annotations. Command line will be set to track entire project org `SampleProjectOrg` by default.
- If you want to track a project with start date before 2015-01-01, then you need to manually update `sampleproject/psql.sh` - uncomment special `gha2db` mode `GHA2DB_OLDFMT` as described in the comment.
