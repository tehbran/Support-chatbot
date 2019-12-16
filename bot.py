import rivescript

bot = rivescript.rivescript.RiveScript()
bot.load_file('botscript.rive')
bot.sort_replies()

print('Bot>', bot.reply("localuser", 'login'))

while True:
    msg = input('You> ')
    if msg == '/quit':
        quit()

    print('Bot>', bot.reply("localuser", msg))
    