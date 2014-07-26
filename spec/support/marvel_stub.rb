class MarvelStub
  attr_reader :method, :domain

  def initialize(method, domain)
    @method = method.to_sym
    @domain = domain
  end

  def generate_stub
    stub_request(@method, @domain).
    to_return(
      status: 200,
      body: body
    )             
  end

  def body
    '{
      "data": {
        "results": [
        {
          "thumbnail": {
            "path": "http://i.annihil.us/u/prod/marvel/i/mg/3/f0/51e829cd06982"
          },
          "urls": [
          {
            "url": "http://marvel.com/comics/characters/1009325/norman_osborn?utm_campaign=apiRef&utm_source=5d97e8765499ff55444f190b7909f5d7"
            
          }]
        }]
      }
    }'    
  end
end
