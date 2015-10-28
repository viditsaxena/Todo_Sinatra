class UsersController < ApplicationController


  get '/new' do
    erb :'users/new'
  end

  post '/' do
    user = User.new(params[:user]) # Why didnt we do User.create here.
    user.password = params[:password]
    user.save
    redirect '/users/login'
  end

  get '/login' do
    erb :'users/login'
  end

  get '/profile' do
    authenticate!
    @current_user = current_user
    erb :'users/profile'
  end
end
