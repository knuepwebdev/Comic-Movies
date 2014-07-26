class MarvelDataFormat
  def initialize(response)
    @response = response
  end

  def character
    @response['data']['results'][0]
  end

  def thumbnail
    @response['data']['results'][0]['thumbnail']['path']
  end

  def link
    @response['data']['results'][0]['urls'][0]['url']
  end
end
