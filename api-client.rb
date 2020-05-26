require 'logger'
require 'httparty'

class SinatraApp
  include HTTParty
  logger ::Logger.new(STDOUT), :info, :logstash
  base_uri 'dropbear-server:4567'
end

logger = Logger.new(STDOUT)

personas = [
  { name: 'Palaseri', img: 'palaseri.jpg' },
  { name: 'Drew', img: 'drew.jpg' },
  { name: 'Michelle', img: 'michelle.jpg' },
  { name: 'Frank', img: 'frank.jpg' },
  { name: 'Lynn', img: 'lynn.jpg' },
  { name: 'Nathan', img: 'nathan.jpg' },
  { name: 'Matty', img: 'matty.jpg' },
  { name: 'Jason', img: 'jason.jpg' },
  { name: 'Vivancos', img: 'vivancos.jpg' },
  { name: 'Ben', img: 'ben.jpg' }, 
  { name: 'Greg', img: 'greg.jpg' },
  { name: 'Shivan', img: 'shivan.jpg' },
  { name: 'Tom', img: 'tom.jpg' },
  { name: 'ADG', img: 'adg.jpg' },
  { name: 'Mike', img: 'mike.jpg' },
]

loop do
  # Select a persona
  persona = personas.rotate!.first
  #persona[:img] = 'dropbear.png'
  fortune = `/usr/games/fortune -s fortunes`
  SinatraApp.post('/post', { body: {name: persona[:name], img: persona[:img], message: fortune } })
  seconds = rand(3..10)
  logger.info "Sleeping for #{seconds} seconds..."
  sleep seconds
end
