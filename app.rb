require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    uname = params[:name]
    reversed = uname.reverse
  end
end
