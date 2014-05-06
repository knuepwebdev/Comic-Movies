class Marvel
  include HTTParty

  def self.fetch_image(id)
    uri = URI.parse(URI.encode("http://gateway.marvel.com/v1/public/characters/#{id}?#{MarvelParameters.credentials}"))
    response = HTTParty.get(uri)
    response_body = JSON.parse(response.body)
    results = response_body['data']['results'][0]
    image = response_body['data']['results'][0]['thumbnail']['path']
  end
end
