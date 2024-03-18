local thing = require('chatgpt')
local home = vim.fn.expand("$HOME")
require("chatgpt").setup({
    api_key_cmd = "gpg --decrypt " .. home .. "/chatgptapi.txt.gpg"
})
