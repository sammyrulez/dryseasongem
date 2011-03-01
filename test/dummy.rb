class Dummy

  def initialize(params)
         @stuff = params['stuff_str']
  end

  def print_dummy_stuff()
    puts "bal bla bla #{@stuff}"
  end
  
end