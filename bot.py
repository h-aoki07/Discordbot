import discord
from discord.ext import commands

intents = discord.Intents.default()
intents.message_content = True  # メッセージ内容を取得するため

bot = commands.Bot(command_prefix='!', intents=intents)

@bot.event
async def on_ready():
    print(f'Logged in as {bot.user}')

@bot.command()
async def hello(ctx):
    await ctx.send('こんにちは！')

bot.run('YOUR_BOT_TOKEN')