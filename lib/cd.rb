class CD
  attr_reader(:artist, :album)
  # Same as writing methods below:
  # def artist
  #   @artist
  # end

  # def album
  #   @album
  # end

  @@all_CD = []

  def initialize(attributes)
    @artist = attributes[:artist]
    @album = []
    @album << attributes[:album]
  end

  def add_album(album)
    @album << album
  end

  def CD.create(attributes)
    new_CD = CD.new(attributes)
    @@all_CD << new_CD
    new_CD
  end

  def CD.all
    @@all_CD
  end

  def CD.clear
    @@all_CD = []
  end
end
