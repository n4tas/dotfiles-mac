return {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    config = function()
        local ft = require("Comment.ft")

        ft.set("dart", {
            "//%s",
            "/*%s*/",
        })
    end,
}
