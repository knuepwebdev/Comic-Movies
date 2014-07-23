class CharacterFilter
  def initialize(characters)
    @characters = characters
  end

  def heros
    filter_characters('hero')
  end

  def villains
    filter_characters('villain')
  end

  private
  def filter_characters(side_name)
    @characters.select { |character| character.side_name == side_name }
  end
end
