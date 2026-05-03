return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = true,
  -- surround: ysiw + "
  -- surround with tag: ysiw + t + tagname
  -- remove: ds + "
  -- change: cs + ' + "
}
