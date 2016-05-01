#simple examples from https://www.ruby-lang.org/en/documentation/quickstart/2/
def hi(name = "World")
	puts "Hello #{name.capitalize}!"
end

hi

hi "fred"

class Greeter
  def initialize(name = "World")
      @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

#create an object of class Greeter
greeter = Greeter.new("Pat")

greeter.say_hi
greeter.say_bye

#display all methods - useful for unknown classes & security testing.
#greeter.instance_methods #woops - this was the object not the class.
Greeter.instance_methods
#full list of methods appears when run within interpreter, but not when script is run from command line.
Greeter.instance_methods(false)

greeter.respond_to?("name")
greeter.respond_to?("say_hi")
greeter.respond_to?("to_s")

class Greeter
  attr_accessor :name
end

#create new Greeter object, assign name, show name, change the name, show name again.
greeter = Greeter.new("Andy")
greeter.respond_to?("name")
greeter.respond_to?("name=")
greeter.say_hi
greeter.name="Betty"
greeter
greeter.name
greeter.say_hi
#attr_accessor defined two new methods for us, name to get the value, and name= to set it.

