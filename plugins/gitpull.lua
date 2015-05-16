do

function run(msg, matches)
  local receiver = get_receiver(msg)
  send_msg(receiver, 'Git Pulling telegram-bot repo...', ok_cb, false)
  return run_command("git pull")
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
