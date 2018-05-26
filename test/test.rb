require 'clippings'
clippings = Clippings::Parse.new("test.txt")
notes = clippings.parseForNote
p notes