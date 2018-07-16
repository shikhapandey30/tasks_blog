class Blog < ApplicationRecord
   mount_uploader :image, ImageUploader	

     has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }

                   

   def self.search(search)
      where("title LIKE ?" , "%#{search}%") 
   end
end
