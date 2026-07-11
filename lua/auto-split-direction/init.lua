---@class AutoSplitDirection
local M = {}

function M.auto_split(ratio, debug)
  local width = vim.api.nvim_win_get_width(0)
  local height = vim.api.nvim_win_get_height(0)
  if debug then
    vim.notify("[auto-split-direction] width = " .. tostring(width) .. " height = " .. tostring(height),
      vim.log.levels.DEBUG)
  end
  if width > height * ratio then
    vim.cmd 'vsplit'
  else
    vim.cmd 'split'
  end
end

function M.setup(opts)
  opts = vim.tbl_deep_extend('force', {
    debug = false,
    ratio = 3.0
  }, opts or {})

  if opts.debug then
    vim.notify("[auto-split-direction] auto-split-direction has started!", vim.log.levels.DEBUG)
  end

  vim.api.nvim_create_user_command('SplitAutoDirection', function() M.auto_split(opts.ratio, opts.debug) end, {})
end

return M
