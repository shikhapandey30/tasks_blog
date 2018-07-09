class Blog < ApplicationRecord
   mount_uploader :image, ImageUploader	

   def self.search(search)
      where("title LIKE ?" , "%#{search}%") 
   end
end
