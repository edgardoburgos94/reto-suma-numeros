require 'sinatra'
class Counter
  attr_reader :numero

  def initialize
    @numero = 0
  end

  def suma
    @numero = @numero +1
  end
end

c1 = Counter.new

get '/' do
  @numero = c1.numero
  erb :index
end

post '/' do
  puts "entró"
  c1.suma
  @numero = c1.numero
  puts @numero
  #redirect '/'
  erb :index
end
