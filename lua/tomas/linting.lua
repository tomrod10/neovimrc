require("lint").linters_by_ft = {
    c = { "cpplint" },
    html = { "htmlhint" },
    python = { "pylint" },
    go = { "golangci-lint" },
    javascript = { "eslint_d" },
    typescript = { "eslint_d" },
    javascriptreact = { "eslint_d" },
    typescriptreact = { "eslint_d" }
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

vim.keymap.set("n", "<leader>l", function()
    require("lint").try_lint()
end)
