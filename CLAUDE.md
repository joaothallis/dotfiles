# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Dotfiles managed with [chezmoi](https://www.chezmoi.io/), primarily targeting Termux on Android.

## Commands

```sh
chezmoi diff          # preview changes before applying
chezmoi apply         # apply managed files to home directory
chezmoi add <file>    # start managing a new dotfile
chezmoi apply --dry-run  # verify without writing
```

## Chezmoi naming conventions

Files in this repo use chezmoi's naming scheme to control target paths and permissions:

- `dot_` prefix → `.` in target (e.g., `private_dot_bashrc` → `~/.bashrc`)
- `private_` prefix → `700`/`600` permissions on target
- `.tmpl` suffix → processed as a Go template before writing

## Templating

Templates use `.chezmoi.os` to detect the platform. On Termux, `.chezmoi.os` is `"android"`. Use this to set platform-specific paths (see `init.lua.tmpl` for the existing pattern).
