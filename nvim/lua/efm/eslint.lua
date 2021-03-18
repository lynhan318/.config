return {
    lintCommand = "eslint_d -f unix --stdin",
    lintFormats = {"%f:%l:%c: %m"},
    formatCommand = "eslint_d --fix-to-stdout --stdin",
    formatStdin = true,
    lintIgnoreExitCode = true,
    lintStdin = true,
    codeAction = true
}
