# # Add your code here
# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name"
# users_name = gets.strip

# puts say_hello(users_name)

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
   songs.each_with_index {
     |el, i| puts "#{i + 1}. #{el}"
   }
end

def exit_jukebox
  puts "Goodbye"
end 

def play(songs)
  puts "Please enter a song name or number:"
  number_or_song = gets.strip
  if (number_or_song =~ /[a-z]/) && (songs.include? number_or_song)
    puts "Playing #{number_or_song}"
  elsif (number_or_song =~ /\d/) && (songs.include? songs[number_or_song.to_i-1])
    puts "Playing #{songs[number_or_song.to_i-1]}"
  else 
    puts "Invalid input, please try again"
  end
end

def enter_a_command
  puts "Please enter a command:"
end

def run(songs) 
  run_commands = ["help", "list", "play"]
  enter_a_command
  response_command = gets.strip
  while run_commands.include? response_command do 
    if response_command == "help"
      help
      enter_a_command
      response_command = gets.strip
    elsif response_command == "list"
      list(songs)
      enter_a_command
      response_command = gets.strip
    elsif response_command == "play"
      play(songs)
      enter_a_command
      response_command = gets.strip
    end
  end
  if response_command == "exit"
    exit_jukebox
  end
end  
