return {
  "nvim-neorg/neorg",
  opts = {
    load = {
      ["core.dirman"] = {
        config = {
          workspaces = {
            school = "~/Documents/notes/school",
            bible = "~/Documents/notes/bible",
          },
        },
      },
    },
  },
}
