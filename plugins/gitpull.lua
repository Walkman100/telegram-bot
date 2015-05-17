do

function run(msg, matches)
  local receiver = get_receiver(msg)
  send_msg(receiver, 'Git Pulling telegram-bot repo...', ok_cb, false)
  send_msg(receiver, run_command("git pull"), ok_cb, false)
  return nil
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
