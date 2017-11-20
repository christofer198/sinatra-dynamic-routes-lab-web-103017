require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    uname = params[:name]
    reversed = uname.reverse
  end

  get '/square/:number' do
    num = params[:number]
    square = num.to_i*num.to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phra = params[:phrase]
    "#{num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w1,w2,w3,w4,w5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{w1} #{w2} #{w3} #{w4} #{w5}"
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1]
    num2 = params[:number2]
    op = params[:operation]
    if op == "add"
      num1 + num2
    elsif op == "subtract"
      num1 - num2
    elsif op == "multiply"
      num1 * num2
    elsif op == "divide"
      num1 / num2
    end
  end

end
