require 'spec_helper'

describe MovieFilter do
  let(:upcoming) { double('Type') }
  let(:archives) { double('Type') }
  let(:spider_man) { double('Movie', type: upcoming) }
  let(:bat_man) { double('Movie', type: archives) }
  let(:movies) { [spider_man, bat_man] }
  let(:movie_filter) { MovieFilter.new(movies) }

  it 'filters upcoming movies' do
    Type.should_receive(:find_type).with('upcoming').and_return(upcoming)
    expect(movie_filter.upcoming_movies).to match_array [spider_man]
  end

  it 'filters archived movies' do
    Type.should_receive(:find_type).with('archives').and_return(archives)
    expect(movie_filter.archived_movies).to match_array [bat_man]
  end
end
