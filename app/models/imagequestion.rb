class Imagequestion < ActiveRecord::Base
  belongs_to :category

# Algorith that returns next image
  def self.next category, imagequestion_id
  	return self.where(category: category.id).find(imagequestion_id.intval+1)
  end
end
