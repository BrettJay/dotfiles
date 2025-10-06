return {
  "sourcegraph/amp.nvim",
  branch = "main",
  lazy = false,
  opts = { auto_start = true, log_level = "info" },
  keys = {
    { "<leader>aa", "<cmd>AmpPromptRef<CR>", mode = "n", desc = "Amp: add file/line ref to prompt" },
    { "<leader>aa", ":'<,'>AmpPromptRef<CR>", mode = "x", desc = "Amp: add file/selection ref to prompt" },
    { "<leader>am", ":AmpSend ", mode = "n", desc = "Amp: send message" },
    { "<leader>ab", "<cmd>AmpSendBuffer<CR>", mode = "n", desc = "Amp: send buffer contents" },
    { "<leader>as", ":'<,'>AmpPromptSelection<CR>", mode = "x", desc = "Amp: add selection to prompt" },
  },
  config = function(_, opts)
    require("amp").setup(opts)

    vim.api.nvim_create_user_command("AmpPromptRef", function(cmd_opts)
      local bufname = vim.api.nvim_buf_get_name(0)
      if bufname == "" then
        vim.notify("Current buffer has no filename", vim.log.levels.WARN)
        return
      end

      local relative_path = vim.fn.fnamemodify(bufname, ":.")
      local ref = "@" .. relative_path
      if cmd_opts.line1 ~= cmd_opts.line2 then
        ref = ref .. "#L" .. cmd_opts.line1 .. "-" .. cmd_opts.line2
      elseif cmd_opts.line1 > 1 then
        ref = ref .. "#L" .. cmd_opts.line1
      end

      local amp_message = require("amp.message")
      amp_message.send_to_prompt(ref)
    end, {
      range = true,
      desc = "Add file reference (with selection) to Amp prompt",
    })

    vim.api.nvim_create_user_command("AmpSend", function(cmd_opts)
      local message = cmd_opts.args
      if message == "" then
        vim.notify("Please provide a message to send", vim.log.levels.WARN)
        return
      end

      local amp_message = require("amp.message")
      amp_message.send_message(message)
    end, {
      nargs = "*",
      desc = "Send a message to Amp",
    })

    vim.api.nvim_create_user_command("AmpSendBuffer", function(cmd_opts)
      local buf = vim.api.nvim_get_current_buf()
      local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
      local content = table.concat(lines, "\n")

      local amp_message = require("amp.message")
      amp_message.send_message(content)
    end, {
      nargs = "?",
      desc = "Send current buffer contents to Amp",
    })

    vim.api.nvim_create_user_command("AmpPromptSelection", function(cmd_opts)
      local lines = vim.api.nvim_buf_get_lines(0, cmd_opts.line1 - 1, cmd_opts.line2, false)
      local text = table.concat(lines, "\n")

      local amp_message = require("amp.message")
      amp_message.send_to_prompt(text)
    end, {
      range = true,
      desc = "Add selected text to Amp prompt",
    })
  end,
}
