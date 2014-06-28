class CharacterCollector
  def initialize(response)
    @results = response
    @data_format = DataFormat.new(response)
  end

  def collect_characters
    @data_format.response.map do |result|
      @data_format.result = result
      character = Character.find_or_create_by(comic_vine_id: @data_format.id)
      character.assign_attributes(
        name: @data_format.name,
        description: @data_format.deck,
        first_appearance_comic_name: @data_format.first_appearance_comic,
        first_appearance_issue_number: @data_format.first_appearance_issue,
        side_id: character.side_id,
        comic_vine_link: @data_format.site_detail_url)

      character
    end
  end   
end