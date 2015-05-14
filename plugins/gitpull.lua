do

function run(msg, matches)
  return 'Git Pulling telegram-bot repo...\n'.. run_command("git pull")
end

return {
  description = "Pulls latest changes from Git Repo",
  usage = {
    "!repoupdate: Run git pull in the bot's repo",
    "!rp: alias for repoupdate (Repo Pull)"
  },
  patterns = {
    "^!repoupdate$",
    "^!rp$"
  },
  run = run,
  privileged = true
}

end
