# td-world

Monorepo for the `td` task tracking ecosystem.

## Components

| Directory | Description |
|-----------|-------------|
| `bin/td`  | SQLite-based task tracker CLI |
| `bin/tv`  | fzf-powered TUI viewer for td |
| `site/`   | Landing page at [tdtask.com](https://tdtask.com) |

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/alosec/td-world/main/install.sh | bash
```

## Usage

```bash
# Task management
td create "Title" -p 1
td list
td move <id> todo
td close <id>

# Interactive viewer
tv           # Table view
tv -k        # Kanban view
tv -r        # Ready (unblocked) tasks
```

## Database

Tasks stored in `~/.td/tasks.db`. Project-scoped by current directory.
