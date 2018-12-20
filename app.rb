class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = nil

  def self.instance
    if @@x == nil
      @@x = Logger.new
    end
    return @@x
  end

# cless method
  def self.say_something
    puts "Hello!"
  end

# instance method
  def log_something what
    @f.puts what
  end
end

Logger.say_something
Logger.instance.log_something 'Hello there'
Logger.instance.log_something 'Hello everyone'

logger = Logger.new
logger.log_something 'Wazzzzup'