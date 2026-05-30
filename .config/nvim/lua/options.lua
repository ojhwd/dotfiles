local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.signcolumn = 'yes:2'

opt.backspace = 'indent,eol,start'
opt.clipboard = 'unnamedplus'

opt.splitright = true
opt.splitbelow = true

opt.confirm = true

opt.wrap = false

-- === status line ===

local function mode()
  local modes = {
    n = "NOR",
    i = "INS",
    v = "VIS",
    V = "V-L",
    ["\22"] = "V-B",
    c = "COM",
    R = "REP",
    s = "SEL",
    S = "S-L",
    t = "TER",
  }

  return modes[vim.fn.mode()] or vim.fn.mode()
end

local function git_branch()
  local git_dir = vim.fs.find(".git", { upward = true })[1]
  if not git_dir then
    return ""
  end

  local head = io.open(vim.fs.dirname(git_dir) .. "/.git/HEAD")
  if not head then
    return ""
  end

  local content = head:read("*a")
  head:close()

  local branch = content:match("refs/heads/(.+)")
  return branch and (" " .. branch) or ""
end

_G.statusline_mode = mode
_G.statusline_git = git_branch

vim.o.laststatus = 3

vim.o.statusline = table.concat({
  " ",
  "%{%v:lua.statusline_mode()%}",
  " │ ",
  "%f",
  " %m",
  "%=",
  "%{%v:lua.statusline_git()%}",
  " │ ",
  "%l:%c ",
})

vim.opt.showmode = false
