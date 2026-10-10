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

Add this to each cloud environment's setup script. At claude.ai/code, click the
cloud icon with the environment's name in the row above the message box, then
**Cloud** → hover the environment → settings (gear) icon → **Setup script**:

```bash
mkdir -p ~/.claude
curl -fsSL https://raw.githubusercontent.com/gchrupala/dotfiles/main/claude/CLAUDE.md \
  -o ~/.claude/CLAUDE.md || echo "warning: could not fetch global CLAUDE.md"
```

The setup script result is cached for about seven days, so new sessions do not
re-fetch on every start. To pick up a change sooner, edit the setup script
(for example, bump the version comment) — that rebuilds the cache:

```bash
# claude-md v2
```
