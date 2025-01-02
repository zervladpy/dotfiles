local config = {
  cmd = { vim.fn.expand('C:\\Users\\vlad\\AppData\\Local\\nvim-data\\mason\\bin\\jdtls') },
  root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, {upward = true})[1]),
}

require('jdtls').start_or_attach(config)
