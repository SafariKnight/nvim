-- -- Enable which-key
local which_ok, which_key = pcall(require, "which-key")
if not which_ok then
	return
end
which_key.setup({
	key_labels = {
		["<leader>"] = "SPACE",
		["<cr>"] = "ENTER",
		["<tab>"] = "TAB",
	},
})

local wkmap = which_key.register
local leaderNormal = { mode = "n", prefix = "<leader>" }

wkmap({
	-- Clear highlights
	h = { "<cmd>nohlsearch<CR>", "Remove Highlights" },
	-- Explorer
	e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
	-- Telescope
	f = {
		name = "Find",
		f = { ":Telescope find_files<cr>", "File" },
		t = { ":Telescope live_grep<cr>", "Text" },
		p = { ":Telescope projects<cr>", "Project" },
		b = { ":Telescope buffers<cr>", "Buffer" },
	},
  -- Git
  g = {
    name = "Git",
    g = {":lua _LAZYGIT_TOGGLE()<CR>", "Lazy Git Toggle"},
  },
  -- Comment
  ["/"] = {"<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment"},
  -- DAP (why)
  d = {
    name = "Debug",
    b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint"},
    c = { "<cmd>lua require'dap'.continue()<cr>", "Continue"},
    i = { "<cmd>lua require'dap'.step_into()<cr>", "Into"},
    o = { "<cmd>lua require'dap'.step_over()<cr>", "Over"},
    O = { "<cmd>lua require'dap'.step_out()<cr>", "Out"},
    r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Repl "},
    l = { "<cmd>lua require'dap'.run_last()<cr>", "Last"},
    u = { "<cmd>lua require'dapui'.toggle()<cr>", "UI"},
    t = { "<cmd>lua require'dap'.terminate()<cr>", "Exit"}
  },
}, leaderNormal)

wkmap({
  -- Comment
  ["/"] = {"<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", "Comment"},
},
{ prefix = "<leader>", mode = "x", })


