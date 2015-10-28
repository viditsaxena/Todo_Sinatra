class SessionsController < ApplicationController


  post '/' do


    user = User.find_by({username: params[:username]})
    password = params[:password]

    if user && user.password == password
      session[:user_id] = user.id
      redirect 'users/profile'
    else
      redirect '/users/login'
    end
  end


 delete '/' do

   session[:user_id] = nil
   redirect '/users/login'

 end

end
