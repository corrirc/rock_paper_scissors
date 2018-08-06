require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/RPS.rb')

get("/game/:play1/:play2") do
  game = RPS.new(params["play1"], params["play2"])
  @game_result = game.result()
  erb(:result)
end

get("/") do
  erb(:welcome)
end
