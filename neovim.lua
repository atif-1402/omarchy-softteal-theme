return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#1A1815", -- Default background
                base01 = "#908b84", -- Lighter background (status bars)
                base02 = "#1A1815", -- Selection background
                base03 = "#908b84", -- Comments, invisibles
                base04 = "#FEFCE5", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#FEFCE5", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#E1D5B1", -- Variables, errors, red
                base09 = "#fbf9f3", -- Integers, constants, orange
                base0A = "#F5EFD4", -- Classes, types, yellow
                base0B = "#989f9b", -- Strings, green
                base0C = "#b5bbbf", -- Support, regex, cyan
                base0D = "#a1a5b5", -- Functions, keywords, blue
                base0E = "#aaafbb", -- Keywords, storage, magenta
                base0F = "#ffffff", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
