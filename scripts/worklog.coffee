# Description:
#  daily worklog report
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_EMAIL_USER
#   HUBOT_EMAIL_PASSWORD
#
# Commands:
#   업무보고 - 오늘 당신이 한 일을 요약해서 이메일로 보내드립니다.
#
# Author:
#   mnpk

module.exports = (robot) ->
  today = () ->
    date = new Date()
    return "#{date.getFullYear()}-#{date.getMonth() + 1}-#{date.getDate()}"

  send_worklog_email = (from, title, body) ->
    email = require("emailjs/email")
    server = email.server.connect({
       user: process.env.HUBOT_EMAIL_USER,
       password: process.env.HUBOT_EMAIL_PASSWORD,
       host: "mail.castis.com",
       ssl: false
    })
    server.send({
       text: "#{body}",
       from: "#{from}",
       to: "<sd7@castis.com>",
       subject: "#{title}"
    }, (err, message) ->
      console.log(err || message))

  robot.respond /업무\s*보고\s*(.*)/, (msg) ->
    log = msg.match[1]
    summary = "#{msg.message.user.name}님이 오늘 진행하신 이슈입니다.\n"
    summary += "```#{msg.match[1]}```"
    msg.send summary
    # send_worklog_email  "#{result.issues[0].fields.assignee.emailAddress}", "일일업무보고 #{today()}", msg.match[1]
    # msg.send "업무보고 이메일을 발송했습니다."
