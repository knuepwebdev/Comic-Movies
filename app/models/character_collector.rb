class CharacterCollector
  def initialize(response)
    @results = response
    @comic_vine_data_format = ComicVineDataFormat.new(response)
  end

  def collect_characters
    @comic_vine_data_format.response.map do |result|
      @comic_vine_data_format.result = result
      character = Character.find_or_create_by(comic_vine_id: @comic_vine_data_format.id)
      character.assign_attributes(
        name: @comic_vine_data_format.name,
        description: @comic_vine_data_format.deck,
        first_appearance_comic_name: @comic_vine_data_format.first_appearance_comic,
        first_appearance_issue_number: @comic_vine_data_format.first_appearance_issue,
        side_id: character.side_id,
        comic_vine_link: @comic_vine_data_format.site_detail_url)

      character
    end
  end   
end