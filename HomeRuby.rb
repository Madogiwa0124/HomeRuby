require 'yaml'

class Home
  attr_reader :messages

  def initialize(cnt)
    @homessages = yaml_load
    @messages = create_homessages(cnt)
  end

  def create_homessages(cnt)
    messages = []
    cnt.times do |i|
      messages << @homessages.sample
    end
    messages
  end

  def yaml_load
    data = open("#{File.dirname(__FILE__)}/Homessages.yml", 'r') { |f| YAML.load(f) }
  end
end

puts Home.new(ARGV[0].to_i).messages;