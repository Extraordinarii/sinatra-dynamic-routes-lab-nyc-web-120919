require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end 
  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end 
  get '/say/:number/:phrase' do 
    empty_var = ''
    params[:number].to_i.times do 
      empty_var += params[:phrase]
    end 
    empty_var
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i
      ans = 'Cannot compute'
        case params[:operation]
        when 'add'
          ans = (num1 + num2).to_s
        when 'subtract'
          ans = (num2 - num1).to_s
        when 'multiply'
          ans = (num1 * num2).to_s
        when 'divide'
          ans = (num1 / num2).to_s
        end 
  end
end