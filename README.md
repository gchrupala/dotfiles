# dotfiles

Global Claude Code instructions live in [`claude/CLAUDE.md`](claude/CLAUDE.md).
Claude Code loads `~/.claude/CLAUDE.md` in every project.

## Local (CLI and VS Code)

```bash
git clone https://github.com/gchrupala/dotfiles ~/dotfiles
~/dotfiles/install.sh
```

This symlinks `~/.claude/CLAUDE.md` to the file in this repo, so a `git pull` picks up changes.

## Cloud (claude.ai/code)

Add this to each cloud environment's setup script
(environment menu in the session title bar → Edit → Setup script):

```bash
mkdir -p ~/.claude
curl -fsSL https://raw.githubusercontent.com/gchrupala/dotfiles/main/claude/CLAUDE.md \
  -o ~/.claude/CLAUDE.md || echo "warning: could not fetch global CLAUDE.md"
```

New sessions fetch the latest version from `main`.
