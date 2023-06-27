#frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv'
Dotenv.load

require './app/adapters/controllers/users_controllers'
require './app/adapters/controllers/orders_controllers'

set :database, {adapter: 'sqlite3', database: ENV['DB_PATH']}


post '/users' do
  {result: UsersController.create(params)}.to_json
end

post '/:user_id/orders' do
  {result: OrdersController.new(params[:user_id]).create(params)}.to_json
end