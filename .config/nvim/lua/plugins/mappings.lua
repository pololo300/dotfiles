return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Tab>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
        },
      },
    },
  },
}
