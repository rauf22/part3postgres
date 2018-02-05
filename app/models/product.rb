class Product < ApplicationRecord

	validates :title, presence: true

	has_many :product_categories

	has_many :categories, through: :product_categories

	has_many :line_items, dependent: :destroy

 
  has_attached_file :image, :styles => {:small => "150x150>", :medium => "300x300>", :large => "600x600"} 
	#:url => "/assets/items/:id/:style/:basename.:extension",
	#:path => "rails_root/app/assets/items/:id/:style/:basename.:extension"
  #validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  do_not_validate_attachment_file_type :image

end
