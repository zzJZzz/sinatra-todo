require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'a844d3fb3fc90df854cb04f9f2b3a9824d8877ea42dcbd315aba0e65910197b6'
  end

  get '/' do
    erb :index
  end

  helpers do
    def redirect_if_not_logged_in
      return if logged_in?

      redirect '/login?error=You have to be logged in to do that'
    end

    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end
  end
end
