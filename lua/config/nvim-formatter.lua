local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettier
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock"
})

return M
