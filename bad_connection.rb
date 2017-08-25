puts "HELLO, THIS IS A GROCERY STORE!"
$ready_to_quit = false
$goodbye_count = 0

def goodbye
  $goodbye_count += 1
  if $goodbye_count == 1
    puts "ANYTHING ELSE I CAN HELP WITH?"
  else
    puts "THANK YOU FOR CALLING!"
    $ready_to_quit = true
  end
end

until $ready_to_quit
  input = gets.chomp
  if input == ""
    puts "HELLO?!"
  elsif input =~ /[a-z]/
    puts "I AM HAVING A HARD TIME HEARING YOU."
  elsif input == "GOODBYE!"
    goodbye
  elsif input == input.upcase
    puts "NO, THIS IS NOT A PET STORE"
  end
end
