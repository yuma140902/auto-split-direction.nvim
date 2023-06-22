local function auto_split(ratio)
  local width = vim.api.nvim_win_get_width(0)
  local height = vim.api.nvim_win_get_height(0)
  vim.notify("[auto-split-direction] width = " .. tostring(width) .. " height = " .. tostring(height),
    vim.log.levels.DEBUG)
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

  if opts['debug'] then
    vim.notify("[auto-split-direction] auto-split-direction has started!", vim.log.levels.DEBUG)
  end

  local ratio = opts['ratio']
  if ratio == nil then
    ratio = 2.0
  end

  vim.api.nvim_create_user_command('Split', function() auto_split(ratio) end, {})
end
return {
  setup = setup,
  auto_split = auto_split
}
