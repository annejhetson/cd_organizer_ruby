require 'rspec'
require 'cd'
require 'album'

describe CD do
  before do
    CD.clear
  end

  it 'creates an instance of CD' do
    test_album = Album.new({:name => 'Like a Virgin'})
    test_cd = CD.new({:artist => 'Madonna', :album => test_album.name})
    test_cd.should be_an_instance_of CD
  end

  it 'is initialized with attributes artist and album' do
    test_album = Album.new({:name => "Like a Virgin"})
    test_cd = CD.new({:artist => 'Madonna', :album => test_album})
    puts test_cd.album[0].name
    test_cd.artist.should eq 'Madonna'
    test_cd.album.should eq [test_album]
  end

  describe '.create' do
    it 'creates an initialized CD object instance' do
      test_album = Album.new({:name => "Like a Virgin"})
      test_cd = CD.create({:artist => 'Madonna', :album => test_album})
      test_cd.artist.should eq 'Madonna'
      test_cd.album.should eq [test_album]
    end
  end
  describe '.all' do
    it 'starts with an empty array' do
      CD.all.should eq []
    end

    it 'includes all CD instances' do
      test_album = Album.new({:name => "Like a Virgin"})
      test_cd = CD.create({:artist => 'Madonna', :album => test_album})
      CD.all.should eq [test_cd]
    end
  end

  describe 'add_album' do
    it 'adds an album to the artist' do
      test_album1 = Album.new({:name => "Like a Virgin"})
      test_cd = CD.create({:artist => 'Madonna', :album => test_album1})
      test_album2 = Album.new({:name => "XOXO"})
      test_cd.add_album(test_album2)
      test_cd.album.should eq [test_album1, test_album2]
    end
  end
end
