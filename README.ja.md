# auto-split-direction.nvim

auto-split-direction.nvimはウィンドウの分割方向を自動的に決定するLuaプラグインです。`:SplitAutoDirection`コマンドを使ってウィンドウを分割できます。ウィンドウが縦長なら水平に、横長なら垂直に分割します。

([English](./README.md) / 日本語)

## 必要要件

- Neovim 0.7.0 以降

## インストール

### lazy.nvim

```lua
{
    'yuma140902/auto-split-direction.nvim',
    cmd = 'SplitAutoDirection',
    init = function()
        -- `<C-w>a`から`<cmd>SplitAutoDirection<cr>`へのマッピングを推奨しますが、必須ではありません。
        vim.keymap.set('n', '<C-w>a', '<cmd>SplitAutoDirection<cr>')
    end,
    setup = function()
        require 'auto-split-direction'.setup {
            -- ここにオプションを記述
        }
    end
}
```

## 設定

```lua
{
    debug = false,  -- trueの場合、デバッグメッセージを表示
    ratio = 3.0     -- 列と行の比率
}
```

[auto-split-direction.nvim.txt](./doc/auto-split-direction.nvim.jax)も参照
