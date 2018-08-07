require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('models/rps.rb')

also_reload('./models/rps')

get("/play/:play1/:play2") do
  game = RPS.new(params["play1"], params["play2"])
  @game_play = game.play()
  erb(:result )
end

get("/") do
  erb(:home)
end
