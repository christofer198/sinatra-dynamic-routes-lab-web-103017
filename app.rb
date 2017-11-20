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

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w1,w2,w3,w4,w5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{}"
  end

end
