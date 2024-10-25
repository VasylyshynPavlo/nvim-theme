return {
    "mhartington/formatter.nvim",
    config = function()
        require("formatter").setup({
            filetype = {
                cpp = {
                    function()
                        return {
                            exe = "clang-format",
                            args = { 
                                "--style=file", 
                                "--tab-width=5",  -- Встановлює ширину табуляції
                                "--use-tab=true"  -- Використовує табуляцію
                            },
                            stdin = true,
                        }
                    end,
                },
            },
        })
    end
}

