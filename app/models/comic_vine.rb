class ComicVine
  include HTTParty

  def initialize(ids)
    @ids = ids.join('|')
  end

  def fetch_characters
    response = call_api
    character_collector = CharacterCollector.new(response)
    character_collector.collect_characters
  end

  def call_api
    uri = URI.parse(URI.encode(url))
    response = HTTParty.get(uri)    
    results = JSON.parse(response.body)
  end

  private
  def url
    "http://comicvine.com/api/characters/?filter=id:#{@ids}&api_key=#{ComicVine.api_key}&format=json".strip
  end

  def self.api_key
    ENV['COMIC_VINE_KEY']
  end  
end
