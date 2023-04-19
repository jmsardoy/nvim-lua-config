return {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
        diagnosticSeverityOverrides = {
          reportMissingImports = "none", -- disable due to pyright not working with pyenv
          reportMissingModuleSource = "none", -- disable due to pyright not working with pyenv
        }
      },
    },
  },
}












































