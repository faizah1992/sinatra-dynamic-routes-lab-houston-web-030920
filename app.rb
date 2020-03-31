require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name].reverse 
  end

  get '/square/:number' do 
    @number = params[:number].to_i**2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1]
    @num2 = params[:number2]
    @operation = params[:operation] 
    if @operation == "add"
      "#{@num1.to_i + @num2.to_i}"
    elsif @operation == "subtract"
      "#{@num2.to_i - @num1.to_i}"
    elsif @operation == "multiply"
      "#{@num1.to_i * @num2.to_i}"
    elsif @operation == "divide"
        "#{@num1.to_i/@num2.to_i}"
    end  
  end

end