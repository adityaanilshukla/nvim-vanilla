vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.md",
  callback = function()
    local path = vim.fn.expand("%:p:h")  -- get directory of current file
    local css1 = path .. "/markdown-preview.css"
    local css2 = path .. "/.md-style/markdown-preview.css"

    if vim.fn.filereadable(css1) == 1 then
      vim.g.mkdp_markdown_css = css1
    elseif vim.fn.filereadable(css2) == 1 then
      vim.g.mkdp_markdown_css = css2
    else
      vim.g.mkdp_markdown_css = ""  -- fallback to default style
    end
  end,
})
