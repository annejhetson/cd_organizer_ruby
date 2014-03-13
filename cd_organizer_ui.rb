require './lib/cd.rb'
require './lib/album.rb'


def main_menu
  puts "Welcome to your CD organizer"
  puts "A - Add CD"
  puts "L - List all CDs"
  puts "X - Exit\n\n"
  choice = gets.upcase.chomp
  case choice
  when "A"
    add_CD
  when "L"
    list_CDs
  when "X"
    puts "Bye"
  else
    "Invalid entry."
    main_menu
  end
end

def add_CD
  puts "Enter Artist\n"
  artist = gets.capitalize.chomp
  puts "Enter Album\n"
  album = gets.capitalize.chomp
  new_CD = CD.create({:artist => artist, :album => album})
  puts "'M' - Main Menu"
  puts "'A' - Add another album"
  option = gets.upcase.chomp
  case option
  when "M"
    main_menu
  when "A"
    add_album(new_CD)
  end
end


def add_album(new_CD)
  puts "Enter album name\n"
  new_album = gets.capitalize.chomp
  new_CD.add_album(new_album)
  puts "'M' - Main Menu"
  puts "'A' - Add another album"
  option = gets.upcase.chomp
  case option
  when "M"
    main_menu
  when "A"
    add_album(new_CD)
  end
end

def list_CDs
  puts "Here are all of your CDs:\n"
  CD.all.each_with_index do |cd, index|
    puts "#{index + 1}. #{cd.artist} - #{cd.album}"
  end
  puts "\n\n"
  main_menu
end

main_menu
