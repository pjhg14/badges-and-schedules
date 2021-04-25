# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
    speakers.map {|name| badge_maker(name)}
end

def assign_rooms(speakers)
    speakers.map.with_index {|name, index| "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
end

def printer(speakers)
    batch_badge_creator(speakers).each {|badge| puts badge}
    
    assign_rooms(speakers).each {|assignment| puts assignment}
end