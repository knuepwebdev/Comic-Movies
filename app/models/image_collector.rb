class ImageCollector
  include ActiveModel::Conversion
  extend ActiveModel::Naming
    
  def fetch_character_images
    Character.all.each do |character|
      marvel_id = character.marvel_id
      data = Marvel.fetch_images(marvel_id)
      begin
        character.update_attributes(image: "#{data[:image]}/standard_fantastic.jpg", marvel_link: data[:link])
      rescue Exception => e
        puts "ImageCollector exception: #{e.message}"
      end
    end
  end

  def up_to_date?
    Character.all.each do |character|
      if character.image_file_size.nil?
        return false
      end
    end

    if Character.count > 0
      true
    else
      false
      # character table either has no records or all characters's 
      # image_file_sizes are nil      
    end
  end
end
