# Write a method reverse_words!() that takes a message as a string and reverses the order of the words in place.

def reverse_words!(message)
  message.split(" ").reverse.join(" ")
end