# Neovim Configuration Project

## Overview
This is a modern Neovim configuration written in Lua, designed for efficient development workflows. The configuration uses Lazy.nvim as the plugin manager and follows a modular architecture for easy maintenance and customization.

## Project Structure

### Root Files
- `init.lua` - Main entry point that loads all configuration modules
- `README.md` - Installation and setup instructions
- `lazy-lock.json` - Plugin version lockfile managed by Lazy.nvim

### Configuration Architecture (`lua/config/`)
The configuration is organized in the `lua/config/` directory with these key files:

- `lazy.lua` - Bootstrap and setup Lazy.nvim plugin manager
- `options.lua` - Neovim options and settings (indentation, display, behavior)
- `keymaps.lua` - Custom key mappings and shortcuts
- `plugins/` - Plugin configuration module (loads all plugin configurations)
- `custom_commands.lua` - User-defined commands
- `diagnostic_signs.lua` - LSP diagnostic symbols and signs

### Plugin Definitions (`lua/plugins/`)
Plugin specifications are defined in separate files in `lua/plugins/`:
- `buffers.lua` - Buffer management plugins
- `cmp.lua` - Autocompletion setup
- `colorschemes.lua` - Color themes
- `comment.lua` - Code commenting utilities
- `conform.lua` - Code formatting
- `git.lua` - Git integration
- `lint.lua` - Linting configuration
- `lsp.lua` - Language Server Protocol setup
- `nvim-tree.lua` - File explorer
- `telescope.lua` - Fuzzy finder and picker
- `toggleterm.lua` - Terminal integration
- `treesitter.lua` - Syntax highlighting and parsing
- `virtualenv.lua` - Python virtual environment support
- `which-key.lua` - Key binding hints

### Plugin Configuration (`lua/config/plugins/`)
Individual plugin configurations are stored in `lua/config/plugins/` and loaded via `init.lua`:
- `init.lua` - Main module loader for all plugin configurations
- `bufferline.lua` - Buffer line/tab configuration
- `cmp.lua` - Completion engine setup
- `comment.lua` - Comment plugin configuration
- `conform.lua` - Formatter configuration
- `lint.lua` - Linter setup
- `lsp.lua` - LSP server configurations
- `nvim-tree.lua` - File tree settings
- `toggleterm.lua` - Terminal configuration
- `treesitter.lua` - Treesitter parser setup
- `which-key.lua` - Key hint configuration

## Key Features
- **Modern Lua Configuration**: Fully written in Lua for better performance
- **Plugin Management**: Uses Lazy.nvim with automatic plugin updates
- **LSP Integration**: Language server support with autocompletion and diagnostics
- **Code Formatting**: Automated formatting with Conform.nvim
- **Linting**: Code analysis with nvim-lint
- **File Navigation**: File explorer and fuzzy finding with Telescope
- **Git Integration**: Built-in Git workflow support
- **Terminal Integration**: Integrated terminal with ToggleTerm
- **Syntax Highlighting**: Advanced syntax highlighting with Treesitter

## Installation Requirements
- Neovim >= 0.12.0
- Luarocks for Lua package management
- Ripgrep for fuzzy finding functionality

## Configuration Style
- Uses 2-space indentation
- Modular architecture with clear separation of concerns
- Plugin configurations are isolated in separate files
- Sensible defaults with clipboard integration and persistent undo
- Leader key setup for custom mappings (configured in keymaps.lua)

## Development Commands
The configuration includes linting setup with mypy for Python development. Run linting and typechecking commands to ensure code quality when working with this configuration.