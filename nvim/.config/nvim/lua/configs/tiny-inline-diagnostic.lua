require("tiny-inline-diagnostic").setup {
    preset = "modern", -- Can be: "modern", "classic", "minimal", "powerline", ghost", "simple", "nonerdfont", "amongus"
    hi = {
        error = "DiagnosticError",
        warn = "DiagnosticWarn",
        info = "DiagnosticInfo",
        hint = "DiagnosticHint",
        arrow = "NonText",
        background = "CursorLine", -- Can be a highlight or a hexadecimal color (#RRGGBB)
        mixing_color = "None",     -- Can be None or a hexadecimal color (#RRGGBB). Used to blend the background color with the diagnostic background color with another color.
    },
    options = {
        -- Show the source of the diagnostic.
        show_source = false,

        -- Use your defined signs in the diagnostic config table.
        use_icons_from_diagnostic = true,

        -- Add messages to the diagnostic when multilines is enabled
        add_messages = true,

        -- Throttle the update of the diagnostic when moving cursor, in milliseconds.
        -- You can increase it if you have performance issues.
        -- Or set it to 0 to have better visuals.
        throttle = 20,

        -- The minimum length of the message, otherwise it will be on a new line.
        softwrap = 30,

        -- If multiple diagnostics are under the cursor, display all of them.
        multiple_diag_under_cursor = false,

        -- Enable diagnostic message on all lines.
        -- Can either be a boolean or a table with the following options:
        --  multilines = {
        -- 	-- Enable the multilines feature
        -- 	enabled = false,
        --
        -- 	-- Always show diagnostic messages on all lines
        --  	always_show = false,
        --  }
        --
        -- If it is a boolean set as true, it will enable the feature with the default options:
        --  multilines = {
        -- 	enabled = true,
        -- 	always_show = false,
        -- }

        multilines = {
            enabled = true,
            always_show = true,
        },

        -- Show all diagnostics on the cursor line.
        show_all_diags_on_cursorline = true,

        -- Enable diagnostics on Insert mode. You should also se the `throttle` option to 0, as some artefacts may appear.
        enable_on_insert = true,

        overflow = {
            -- Manage the overflow of the message.
            --    - wrap: when the message is too long, it is then displayed on multiple lines.
            --    - none: the message will not be truncated.
            --    - oneline: message will be displayed entirely on one line.
            mode = "wrap",
        },

        -- Format the diagnostic message.
        -- Example:
        -- format = function(diagnostic)
        --     return diagnostic.message .. " [" .. diagnostic.source .. "]"
        -- end,
        format = nil,

        --- Enable it if you want to always have message with `after` characters length.
        break_line = {
            enabled = false,
            after = 30,
        },

        virt_texts = {
            priority = 2048,
        },

        -- Filter by severity.
        severity = {
            vim.diagnostic.severity.ERROR,
            vim.diagnostic.severity.WARN,
            vim.diagnostic.severity.INFO,
            vim.diagnostic.severity.HINT,
        },

        -- Overwrite events to attach to a buffer. You should not change it, but if the plugin
        -- does not works in your configuration, you may try to tweak it.
        overwrite_events = nil,
    },
    -- ...
    signs = {
        left = "",
        right = "",
        -- left = "",
        -- right = "",
        diag = "●",
        arrow = "    ",
        up_arrow = "    ",
        vertical = " │",
        vertical_end = " └",
    },
    blend = {
        factor = 0.22,
    },
}
