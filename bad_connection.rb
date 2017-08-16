=begin
If you don't input anything (just hit enter) they respond with HELLO?!
If you ask a question with any lower-case letters, they respond with I AM HAVING A HARD TIME HEARING YOU.
If you ask a question in all upper-case letters, they respond with NO, THIS IS NOT A PET STORE
The first time you say GOODBYE! they say ANYTHING ELSE I CAN HELP WITH?
The second time you say GOODBYE! they say THANK YOU FOR CALLING! and the program exits.
=end

puts "Hello! How may I help you?"
customer_reply = gets.chomp

def customer_service_one (customer_reply)
  if customer_reply == ""
    puts "HELLO?!"
  end

  if customer_reply =~ /[a-z]/
    puts "I AM HAVING A HARD TIME HEARING YOU."
  end
  if customer_reply == customer_reply.uppercase
    puts "NO, THIS IS NOT A PET STORE"
  end
end

def customer_service_two (customer_reply)
  if customer_reply == "GOODBYE!"
    goodbyes = []
    goodbyes << customer_reply
    if goodbyes.count = 1
      puts "ANYTHING ELSE I CAN HELP YOU WITH?"
    else
      puts "THANK YOU FOR CALLING"
    end
  end
end
