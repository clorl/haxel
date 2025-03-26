vim.o.makeprg = "powershell -ExecutionPolicy Bypass -File ./make.ps1"

local errorfmt = {
  "%f:%l:%m"
}

vim.o.errorformat = table.concat(errorfmt, ",")

local efpath = vim.fs.normalize(vim.fn.stdpath("log") .. "/nvim-error-file")
efpath = efpath:gsub("/", "\\")

vim.o.makeef = efpath

local success, user_config = pcall(require("config.keys"))
local server_name = "haxe-ls"

local clients = vim.lsp.get_active_clients()
for _, client in ipairs(clients) do
  if client.name == server_name then
    vim.lsp.stop_client(client.id)
    vim.notify("Restarting haxe LSP", vim.log.levels.DEBUG)
    break
  end
end

local client = vim.lsp.start_client {
  name = server_name,
  cmd = { vim.fs.normalize(vim.fn.expand("%:p:h") .. "/build/haxe-lsp") },
  on_attach = function()
    if success and user_config.lsp and type(user_config.lsp) == "function" then
      user_config.lsp()
    end
  end
}

if not client then
  vim.notify("The client failed to start", vim.log.levels.ERROR)
  return
end

nvim_create_autocmd("FileType", {
  pattern = {"*.hx", "*.hxml"},
  callback = function()
    vim.lsp.buf_attach_client(0, client)
    vim.notify("Haxe LSP Started", vim.log.levels.DEBUG)
  end
})
