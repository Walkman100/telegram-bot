do

function run(msg, matches)
  return 'Telegram Bot '.. VERSION ..'\nhttps://github.com/Walkman100/telegram-bot\nGNU GPL v2 license'
end

return {
  description = "Shows bot version",
  usage = "!version: Shows bot version",
  patterns = {
    "^!version$"
  },
  run = run
}

end
