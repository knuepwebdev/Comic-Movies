class Marvel
  include HTTParty

  def self.fetch_images(id)
    uri = URI.parse(URI.encode("http://gateway.marvel.com/v1/public/characters/#{id}?#{MarvelParameters.credentials}"))
    response = HTTParty.get(uri)
    results = JSON.parse(response.body)
    marvel_data_format = MarvelDataFormat.new(results)
    begin
      character = marvel_data_format.character
      image = marvel_data_format.thumbnail
      link = marvel_data_format.link
    rescue Exception => e
      puts "Marvel fetch data exception: #{e.message}"
    end
    {image: image, link: link}
  end
end
