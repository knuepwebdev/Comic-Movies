class ComicVineStub
  attr_reader :method, :domain

  def initialize(method, domain)
    @method = method.to_sym
    @domain = domain
  end

  def body
    '{
      "results": [{
        "id": 13380,
        "name": "Mary Jane",
        "deck": "Peter Parkers love interest",
        "first_appeared_in_issue": {
          "name": "The Amazing Spider Man",
          "issue_number": "4"
        },
        "site_detail_url": "http://www.comicvine.com/mary-jane-waterbuffalo/4005-8706/"
      }]
    }'    
  end
end
