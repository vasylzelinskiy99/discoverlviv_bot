# coding: UTF -8
require 'telegram-bot'


TOKEN = '469330487:AAEm2y5qpwbCU_7Yu0swWOiclhXRpvyN1R4'

Answers = [
]

Telegram::Bot::Client.run(TOKEN) do |bot|
	bot.listen do |message|
		case message.text
		when '/start', '/start start'
			bot.api.send_message(
				chat_id:message.chat_id,
				text: "Hello,#{message.from.first_name}"
				)
		

		else '/start', '/start start'
			bot.api.send_message(
				chat_id:message.chat_id,
				text: Answers.sample
				)
 		end
	end
end


