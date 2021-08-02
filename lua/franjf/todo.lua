require("todo-comments").setup {
    keywords = {
        NOTE = { icon = " ", color = "hint", alt = { "NOTA" } },
        TODO = { icon = " ", color = "info", alt ={"PENDIENTE"} },
        DONE = { icon = " ", color = "#50fa7b"},
        FIX = {icon = " ", color = "error", alt = { "BUG", "FIX", "ERROR" } },
        WARNING = { icon = " ", color = "warning", },
        PERFORMANCE = { icon = " ", color = "perf"},
        TESTING = { icon = "ﭧ ", color = "testing", alt ={"TEST", "PRUEBA"} },
  },
  colors = {
    error = { "LspDiagnosticsDefaultError", "ErrorMsg", "#DC2626" },
    warning = { "LspDiagnosticsDefaultWarning", "WarningMsg", "#FBBF24" },
    info = { "#2563EB" },
    testing  = { "#8f3f71" },
    perf = { "#b16286" },
    hint = { "LspDiagnosticsDefaultHint", "#10B981" },
    default = { "Identifier", "#7C3AED" },
  },
}
