require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    
    if @user = User.find_by(email: params[:email])
      session[:user_id] = @user.id 
      redirect to '/account'
    else 
      erb :error
    end 
  end

  get '/account' do

  end

  get '/logout' do

  end


end

