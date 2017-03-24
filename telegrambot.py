# this code could help you to run a telegram bot for zabbix. 
#! /usr/bin/env python


import telebot
import time
import sys
BOT_TOKEN='you should find it via telegram page'
DESTINATION= sys.argv[1]
SUBJECT= sys.argv[2]
MESSAGE= sys.argv[3]
MESSAGE= MESSAGE.replace('/n','\n')

tb=telebot.TeleBot(BOT_TOKEN)
tb.send_message(DESTINATION, SUBJECT + '\n' + MESSAGE)
