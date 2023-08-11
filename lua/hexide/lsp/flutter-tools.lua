require("flutter-tools").setup({
    fvm = true,
    decorations = {
        statusline = {
            app_version = true,
            device = true,
        }
    },
    widget_guides = {
        enabled = true,
    },
})
require("hexide.lsp.settings.flutter")
