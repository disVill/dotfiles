-- Global options
vim.o.encoding = "utf-8"
vim.o.ignorecase = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.cmdheight = 2
vim.o.updatetime = 300
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.compatible = false
vim.o.showmode = false
vim.o.hlsearch = true
vim.o.shell = "fish"
vim.o.smarttab = true
vim.o.hidden = true

-- Window options
vim.wo.number = true
vim.wo.wrap = false

-- Buffer options
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true

-- Indent options
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
local filetype_tabstop = { lua = 2, nu = 2, markdown = 2, ruby = 2 }
local usrftcfg = vim.api.nvim_create_augroup("UserFileTypeConfig", { clear = true})
vim.api.nvim_create_autocmd("FileType", {
  group = usrftcfg,
  callback = function (args)
    local ftts = filetype_tabstop[args.match]
    if ftts then
      vim.bo.tabstop = ftts
      vim.bo.shiftwidth = ftts
    end
  end
})

-- Command settings
vim.cmd("set wildmenu")
