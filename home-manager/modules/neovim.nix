{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    package = pkgs.neovim.override {
      extraConfig = ''
        -- Enable treesitter for supported langs
        require('nvim-treesitter.configs').setup {
          ensure_installed = { "javascript", "typescript", "rust", "go", "ruby", "python", "lua" };
          highlight = { enable = true };
        }
        -- LSP setup
        local lsp = require('lspconfig')
        for _, server in ipairs({ "tsserver", "rust_analyzer", "gopls", "solargraph", "pyright", "sumneko_lua" }) do
          lsp[server].setup {}
        end
        -- Completion
        require('cmp').setup {}
      '';
    };
    extraPackages = with pkgs; [
      lua-language-server
      python311Packages.python-lsp-server
      rust-analyzer
      gopls
      ruby-language-server
      typescript-language-server
      vimPlugins.nvim-treesitter
      vimPlugins.nvim-lspconfig
      vimPlugins.nvim-cmp
      vimPlugins.cmp-nvim-lsp
      vimPlugins.telescope.nvim
    ];
  };
}
