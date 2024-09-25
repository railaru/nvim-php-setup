local util = require "formatter.util"

local function prettier()
  return {
    exe = "prettier",
    args = {
      "--stdin-filepath",
      util.escape_path(util.get_current_buffer_file_path()),
      "--use-tabs",
      "--single-quote",
    },
    stdin = true,
    try_node_modules = true,
  }
end

local M = {
  filetype = {
    javascript = { prettier },
    javascriptreact = { prettier },
    typescript = { prettier },
    typescriptreact = { prettier },
    vue = { prettier },
    css = { prettier },
    scss = { prettier },
    less = { prettier },
    html = { prettier },
    json = { prettier },
    jsonc = { prettier },
    yaml = { prettier },
    markdown = { prettier },
    graphql = { prettier },
    handlebars = { prettier },
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock"
})

return M
