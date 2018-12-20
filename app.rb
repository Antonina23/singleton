class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  def self.instance
    puts "OK"
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
Logger.instance

logger = Logger.new
logger.log_something 'Wazzzzup'