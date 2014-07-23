require 'spec_helper'

describe CharacterFilter do
  let(:mary_jane) {double('Character', side_name: 'hero')}
  let(:norman_osborn) {
    double('Character', side_name: 'villain')}  
  let(:characters) { [mary_jane, norman_osborn] }
  let(:character_filter) { CharacterFilter.new(characters) }

  it "filters a movie's heroes" do
    expect(character_filter.heros).to match_array [mary_jane]
  end

  it "filters a movie's villains" do
    expect(character_filter.villains).to match_array [norman_osborn]
  end
end
