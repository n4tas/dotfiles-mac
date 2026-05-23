return {
    "nvim-flutter/flutter-tools.nvim",
    ft = { "dart" },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "stevearc/dressing.nvim",
    },
    config = function()
        require("flutter-tools").setup({
            ui = {
                border = "rounded",
                notification_style = "native",
            },

            decorations = {
                statusline = {
                    app_version = false,
                    device = false,
                    project_config = false,
                },
            },

            debugger = {
                enabled = false,
            },

            -- Usually unnecessary if `flutter` is already in PATH
            flutter_path = vim.fn.exepath("flutter") ~= "" and vim.fn.exepath("flutter") or nil,

            root_patterns = { ".git", "pubspec.yaml" },
            fvm = false,

            widget_guides = {
                enabled = false,
            },

            closing_tags = {
                highlight = "ErrorMsg",
                prefix = ">",
                priority = 10,
                enabled = true,
            },

            dev_log = {
                enabled = true,
                notify_errors = false,
                open_cmd = "15split",
                focus_on_open = false,
            },

            dev_tools = {
                autostart = false,
                auto_open_browser = false,
            },

            outline = {
                open_cmd = "30vnew",
                auto_open = false,
            },

            lsp = {
                settings = {
                    showTodos = true,
                    completeFunctionCalls = true,
                    renameFilesWithClasses = "prompt",
                    enableSnippets = true,
                    updateImportsOnRename = true,
                },
            },
        })

        local map = vim.keymap.set

        map("n", "<leader>fr", "<cmd>FlutterRun<cr>", { desc = "Flutter run" })
        map("n", "<leader>fq", "<cmd>FlutterQuit<cr>", { desc = "Flutter quit" })
        map("n", "<leader>fR", "<cmd>FlutterRestart<cr>", { desc = "Flutter restart" })
        map("n", "<leader>fl", "<cmd>FlutterReload<cr>", { desc = "Flutter hot reload" })
        map("n", "<leader>fd", "<cmd>FlutterDevices<cr>", { desc = "Flutter devices" })
        map("n", "<leader>fe", "<cmd>FlutterEmulators<cr>", { desc = "Flutter emulators" })
        map("n", "<leader>fo", "<cmd>FlutterOutlineToggle<cr>", { desc = "Flutter outline" })
        map("n", "<leader>fg", "<cmd>FlutterLogToggle<cr>", { desc = "Flutter log" })
        map("n", "<leader>fp", "<cmd>FlutterPubGet<cr>", { desc = "Flutter pub get" })
        map("n", "<leader>ft", "<cmd>FlutterDevTools<cr>", { desc = "Flutter DevTools" })
    end,
}
