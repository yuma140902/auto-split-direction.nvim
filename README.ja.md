# auto-split-direction.nvim

auto-split-direction.nvimはウィンドウの分割方向を自動的に決定するプラグインです。
`:Split`コマンドを使ってウィンドウを分割できます。

([English](./README.md) / 日本語)

## Requirements

- Neovim

## インストール方法

### lazy.nvim

```lua
{
    'yuma140902/auto-split-direction.nvim',
    cmd = 'Split',
    setup = function()
        require 'auto-split-direction'.setup {
            -- ここにオプションを書く
        }
    end
}
```

## Configuration

```lua
{
    debug = false,  -- trueならデバッグ情報を表示する
    ratio = 3.0     -- 行と列の比の閾値
}
```

[auto-split-direction.nvim.txt](./doc/auto-split-direction.nvim.jax)も参照

