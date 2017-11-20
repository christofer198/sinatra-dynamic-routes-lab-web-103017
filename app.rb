require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    uname = params[:name]
    reversed = uname.reverse
  end

  get '/square/:number' do
    num = params[:number]
    square = num*num
  end

  get '/say/:number/:phrase' do
    num = params[:number]
    phra = params[:phrase]
    num.to_i.times do
      "#{phra}"
    end
  end
end
