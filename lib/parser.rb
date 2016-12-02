require 'json'

class Parser

  attr_reader :data_hash

  def initialize(data_file)
    json = File.read(data_file)
    @data_hash = JSON.parse(json)
  end
end
