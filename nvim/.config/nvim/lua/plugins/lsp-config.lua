return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.ansiblels.setup({
        capabilities = capabilities,
      })
      lspconfig.arduino_language_server.setup({
        capabilities = capabilities,
      })
      lspconfig.asm_lsp.setup({
        capabilities = capabilities,
      })
      lspconfig.autotools_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.bashls.setup({
        capabilities = capabilities,
      })
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })
      lspconfig.csharp_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.cmake.setup({
        capabilities = capabilities,
      })
      lspconfig.cssls.setup({
        capabilities = capabilities,
      })
      lspconfig.clojure_lsp.setup({
        capabilities = capabilities,
      })
      lspconfig.cucumber_language_server.setup({
        capabilities = capabilities,
      })
      lspconfig.serve_d.setup({
        capabilities = capabilities,
      })
      lspconfig.dockerls.setup({
        capabilities = capabilities,
      })
      lspconfig.docker_compose_language_service.setup({
        capabilities = capabilities,
      })
      lspconfig.eslint.setup({
        capabilities = capabilities,
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })
      lspconfig.gradle_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.groovyls.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.helm_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.intelephense.setup({
        capabilities = capabilities,
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })
      lspconfig.jdtls.setup({
        capabilities = capabilities,
      })
      lspconfig.jedi_language_server.setup({
        capabilities = capabilities,
      })
      lspconfig.julials.setup({
        capabilities = capabilities,
      })
      lspconfig.jqls.setup({
        capabilities = capabilities,
      })
      lspconfig.kotlin_language_server.setup({
        capabilities = capabilities,
      })
      lspconfig.lemminx.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.marksman.setup({
        capabilities = capabilities,
      })
      lspconfig.powershell_es.setup({
        capabilities = capabilities,
      })
      lspconfig.puppet.setup({
        capabilities = capabilities,
      })
      lspconfig.ruby_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
      })
      lspconfig.solang.setup({
        capabilities = capabilities,
      })
      lspconfig.spectral.setup({
        capabilities = capabilities,
      })
      lspconfig.sqlls.setup({
        capabilities = capabilities,
      })
      lspconfig.taplo.setup({
        capabilities = capabilities,
      })
      lspconfig.tflint.setup({
        capabilities = capabilities,
      })
      lspconfig.thriftls.setup({
        capabilities = capabilities,
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.vuels.setup({
        capabilities = capabilities,
      })
      lspconfig.yamlls.setup({
        capabilities = capabilities,
      })

      -- keymap
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
