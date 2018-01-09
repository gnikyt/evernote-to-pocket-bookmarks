require 'pocket-ruby'
require 'nokogiri'

# Setup Pocket
Pocket.configure do |config|
  config.consumer_key = ARGV[1]
end

# Add the access token
client = Pocket.client(access_token: ARGV[2])

# Read the notes in the XML
doc = Nokogiri::XML(File.read(ARGV[0]))
notes = doc.xpath('//note')

# Loop notes and import to Pocket
count = 0
notes.each do |note|
  source = note.at_xpath('note-attributes/source-url')
  next unless source

  client.add(
    url: source.content,
    tags: note.xpath('tag').map(&:content).join(',')
  )
  count += 1
end

puts "Completed import of #{count} bookmarks"
