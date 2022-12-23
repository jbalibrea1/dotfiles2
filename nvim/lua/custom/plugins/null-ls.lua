local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,
  b.diagnostics.eslint_d,
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "javascript", "typescript" } },
  --b.:formatting.prettierd,
  --b.diagnostics.cspell,
  b.completion.spell,
  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
