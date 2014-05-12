class Imagequestion < ActiveRecord::Base
  belongs_to :category

  def next category
  	return self.where(category: @category.id).first
  end
end
