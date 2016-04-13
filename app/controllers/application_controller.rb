require './config/environment'
require './app/models/tweet'
require './app/models/user'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @tweets = Tweet.all
    erb :index
  end

  get '/tweet' do
    erb :tweet
  end

  post '/tweet' do
    user = User.find_by(:username => params[:username])
    if user.nil?
      user = User.create(username: params[:username])
    end
    tweet = Tweet.new({:user => user, :status => params[:status]}) 
    tweet.save
    redirect '/'
  end

end
