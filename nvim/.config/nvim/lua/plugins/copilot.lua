return {
    {
        "github/copilot.vim"
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "github/copilot.vim" },                       -- or zbirenbaum/copilot.lua
            { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
        },
        build = "make tiktoken",                            -- Only on MacOS or Linux
        opts = {
            -- See Configuration section for options
            mappings = {
                submit_prompt = {
                    insert = "<C-j>",
                    normal = "<C-j>",
                },
            }
        },
        keys = {
            {
                "<leader>pc",
                function()
                    require("CopilotChat").open({
                        window = {
                            layout = "float",
                            title = "Copilot Chat",
                        }
                    })
                end
            }
        }
    }
}
