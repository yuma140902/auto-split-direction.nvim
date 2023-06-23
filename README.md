# auto-split-direction.nvim

auto-split-direction.nvim is a lua plugin for Neovim that automatically determines the direction of window splitting. You can use `:Split` command to split a window. It splits the window horizontally if it is vertical, and vertically if it is horizontal.

(English / [日本語](./README.ja.md))

## Requirements

- Neovim

## Installation

### lazy.nvim

```lua
{
    'yuma140902/auto-split-direction.nvim',
    cmd = 'Split',
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
    ratio = 3.0     -- Column to row ratio threshold
}
```

See also [auto-split-direction.nvim.txt](./doc/auto-split-direction.nvim.txt).

