# Agent Instructions for Neovim Configuration

## Project Structure
This is a LazyVim-based Neovim configuration using Lua.

## Build/Lint/Test Commands
- Format Lua code: `stylua .`
- No specific build/test commands (this is a Neovim config, not a traditional project)

## Code Style Guidelines
- **Language**: Lua
- **Indentation**: 2 spaces (per stylua.toml)
- **Line length**: 120 characters max
- **Naming**: Use snake_case for variables, functions

## Plugin Configuration
- Use LazyVim plugin structure in `lua/plugins/`
- Plugin specs should return a table with plugin configurations
- Use `opts` for simple option overrides
- Use `opts = function(_, opts)` for complex configurations
- Add plugin dependencies in `dependencies` table

## File Organization
- Core config: `lua/config/` (lazy.lua, options.lua, keymaps.lua, autocmds.lua)
- Plugin configs: `lua/plugins/` (one spec per file or grouped logically)
- Main entry: `init.lua` (minimal, just requires config.lazy)

## Comments
- Use `--` for line comments
- Use `-- stylua: ignore` to disable formatting for specific lines
- Prefer descriptive variable names over excessive comments
