local function auto_split(ratio, debug)
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

local function setup(opts)
  if opts == nil then
    opts = {}
  end
  setmetatable(opts, {
    __index = {
      debug = false,
      ratio = 3.0
    }
  })

  if opts.debug then
    vim.notify("[auto-split-direction] auto-split-direction has started!", vim.log.levels.DEBUG)
  end

  vim.api.nvim_create_user_command('SplitAutoDirection', function() auto_split(opts.ratio, opts.debug) end, {})
end
return {
  setup = setup,
  auto_split = auto_split
}
