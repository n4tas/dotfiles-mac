-- LSP overrides
return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                clangd = {
                    cmd = {
                        "clangd",
                        "--query-driver=/Users/work/.espressif/tools/riscv32-esp-elf/**/bin/riscv32-esp-elf-gcc",
                    },
                },
            },
        },
    },
}
