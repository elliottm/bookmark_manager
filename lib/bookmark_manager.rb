require 'sinatra/base'
require 'data_mapper'

ENV['RACK_ENV'] = 'test'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_test")

require './lib/link'

DataMapper.finalize
DataMapper.auto_upgrade!

class BookmarkManager < Sinatra::Base
  
  set :views, File.join(File.dirname(__FILE__), '..', 'views')

  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
