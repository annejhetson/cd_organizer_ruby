class Album
  attr_reader(:name)

  def initialize(attributes)
    @name = attributes[:name]
  end
end
#   def Album.add_album(album_name)
#     new_album = Album.create({:name => album_name})
#   end

#   def Album.clear
#     @@all_albums = []
#   end

#   # def list_albums
#   #   @@all_albums.each do |album|
#   #     album
#   #   end
#   # end

#   def Album.all
#     @@all_albums
#   end

  # def Album.create(attributes)
  #   new_album = Album.new(attributes)
  #   @@all_albums << new_album
  #   new_album
  # end

