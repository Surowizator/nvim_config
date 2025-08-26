return function()
    require("nvim-autopairs").setup {

        fast_wrap = {
            map = "<M-e>",
            chars = { "{", "[", "(", '"', "'", "<"},
            pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
            offset = 0, -- Offset from pattern match
            end_key = '$',
            before_key = 'h',
            after_key = 'l',
            cursor_pos_before = true,
            keys = "qwertyuiopzxcvbnmasdfghjkl",
            check_comma = true,
            highlight = "PmenuSel",
            highlight_grey = "LineNr",
        },
    }

    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
end
