class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
      
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 def is_liked(comment)
	 if Like.where(:likeable => comment ,:user_id => self.id).present?
	 Like.where(:likeable => comment ,:user_id => self.id).last.like==true
	 end
 end

 def is_disliked(comment)
	 if Like.where(:likeable => comment ,:user_id => self.id).present?
	 Like.where(:likeable => comment ,:user_id => self.id).last.like==false
	 end
 end

 def self.find_comment(id, type)
	 comment= type.constantize.find(id)
	 return comment
 end
end