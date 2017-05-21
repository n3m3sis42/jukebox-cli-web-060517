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

def get_song_title(user_input, songs)
  return user_input if songs.include?(user_input)
  return songs[user_input.to_i - 1] if user_input.to_i > 0
  nil
end

def play(songs)
  puts "Please enter a song name or number:"
  song = get_song_title(gets.chomp, songs)
  puts song.nil? ? "Invalid input, please try again" : "Playing #{song}"
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = ""
  until user_input == "exit"
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
    when "help"
      help
    when "list"
      list
    when "play"
      play
    else
      puts "Invalid input!"
    end
  end
  exit_jukebox
end
