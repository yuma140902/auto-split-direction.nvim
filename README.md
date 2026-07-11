# auto-split-direction.nvim

auto-split-direction.nvim is a lua plugin for Neovim that automatically determines the direction of window splitting. You can use `:SplitAutoDirection` command to split a window. It splits the window horizontally if it is vertical, and vertically if it is horizontal.

(English / [日本語](./README.ja.md))

## Requirements

- Neovim 0.7.0 or later

## Installation

### lazy.nvim

```lua
{
    'yuma140902/auto-split-direction.nvim',
    cmd = 'SplitAutoDirection',
    init = function()
	-- Mapping `<C-w>a` to `<cmd>SplitAutoDirection<cr>` is recommended but not required.
        vim.keymap.set('n', '<C-w>a', '<cmd>SplitAutoDirection<cr>')
    end,
    setup = function()
        require 'auto-split-direction'.setup {
            -- your options here
        }
    end
}
```


## Configuration

```lua
{
    debug = false,  -- if true, show debug messages
    ratio = 3.0     -- Column to row ratio
}
```

See also [auto-split-direction.nvim.txt](./doc/auto-split-direction.nvim.txt).
