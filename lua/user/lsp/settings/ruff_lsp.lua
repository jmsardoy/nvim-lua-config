return {
  init_options = {
    settings = {
      -- Any extra CLI arguments for `ruff` go here.
      args = {"--select", "C4,E,ERA,F,I,PLC,SIM,TID,UP,N,W", "--ignore", "I001"}
    }
  }
}
