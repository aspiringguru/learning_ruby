class MegaGreeter
  attr_accessor :names

  # Create the object
  def initialize(names = "World")
    @names = names
  end

  # Say hi to everybody
  def say_hi
    if @names.nil?
      #instance variable @names=nil
      puts "..."
    elsif @names.respond_to?("each")
      #@names.respond_to?("each") = tests names is iterable
      # @names is a list of some kind, iterate!
      @names.each do |name|
        #name = value of element being iterated over.
        #
        puts "Hello #{name}!"
      end
    else
      #names is not nil or an iterable list.
      #names is converted to a string and returned
      puts "Hello #{@names}!"
    end
  end

  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      #.respond_to?("join") = .join metho will work
      # Join the list elements with commas
      #uses the join method to create a string of all element values separated by nominated string
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end
end


#allows a file to be used as a library, and not to execute code in that context,
# but if the file is being used as an executable, then execute that code.
if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Change name to be "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Change the name to an array of names
  mg.names = ["Albert", "Brenda", "Charles",
              "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end