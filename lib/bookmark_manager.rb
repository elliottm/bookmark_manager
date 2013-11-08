require 'sinatra/base'
require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

require './lib/link'
require './lib/user'

DataMapper.finalize
DataMapper.auto_upgrade!

class BookmarkManager < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'
  
  set :views, File.join(File.dirname(__FILE__), '..', 'views')

  get '/' do
  	@links = Link.all
    erb :index
  end

  not_found do
  	halt 404, 'Not found => you made a mistake dick'
  end

  post '/links' do
  	url = params["url"]
  	title = params["title"]
  	description = params["description"]
  	created_at = Time.now
  	Link.create(:url => url, :title => title, :description => description, :created_at => created_at)
  	redirect to('/')
  end

  get '/user/new' do
    erb :signup
  end

  post '/user/new' do
    name = params["name"]
    email = params["email"]
    password = params["password"]
    user = User.create(:name => name, :email => email, :password => password)
    session[:user_id] = user.id
    redirect to('/')
  end

  helpers do

    def current_user
      @current_user ||=User.get(session[:user_id]) if session[:user_id]
    end 

  end






  # start the server if ruby file executed directly
  run! if app_file == $0
end
