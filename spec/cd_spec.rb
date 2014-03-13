require 'rspec'
require 'cd'

describe CD do
  before do
    CD.clear
  end

  it 'creates an instance of CD' do
    test_cd = CD.new({:artist => 'Madonna', :album => 'Like a Virgin'})
    test_cd.should be_an_instance_of CD
  end

  it 'is initialized with attributes artist and album' do
    test_cd = CD.new({:artist => 'Madonna', :album => 'Like a Virgin'})
    test_cd.artist.should eq 'Madonna'
    test_cd.album.should eq ['Like a Virgin']
  end

  describe '.create' do
    it 'creates an initialized CD object instance' do
      test_cd = CD.create({:artist => 'Madonna', :album => 'Like a Virgin'})
      test_cd.artist.should eq 'Madonna'
      test_cd.album.should eq ['Like a Virgin']
    end
  end
  describe '.all' do
    it 'starts with an empty array' do
      CD.all.should eq []
    end

    it 'includes all CD instances' do
      test_cd = CD.create({:artist => 'Madonna', :album => 'Like a Virgin'})
      CD.all.should eq [test_cd]
    end
  end

  describe 'add_album' do
    it 'adds an album to the artist' do
      test_cd = CD.create({:artist => 'Madonna', :album => 'Like a Virgin'})
      test_cd.add_album("XOXO")
      test_cd.album.should eq ['Like a Virgin', 'XOXO']
    end
  end
end
