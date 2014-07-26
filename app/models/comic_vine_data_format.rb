# Extracting each piece of data into its own method makes it easier to
# maintain when the API's data format changes
class ComicVineDataFormat
  attr_writer :result

  def initialize(response)
    @response = response
  end

  def response
    @response['results']
  end

  def id
    @result['id']
  end

  def name
    @result['name']
  end

  def deck
    @result['deck']
  end

  def first_appearance_comic
    @result['first_appeared_in_issue']['name']
  end

  def first_appearance_issue
    @result['first_appeared_in_issue']['issue_number']
  end

  def site_detail_url
    @result['site_detail_url']
  end
end
