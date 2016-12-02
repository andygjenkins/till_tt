require 'json'

file = File.read('hipster.json')
data_hash = JSON.parse(file)
puts data_hash.keys
puts data_hash['prices']
