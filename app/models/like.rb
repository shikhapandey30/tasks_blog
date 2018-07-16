class Like < ApplicationRecord
	belongs_to :likeable, polymorphic: true
 def self.create_like(comment, current_user)
 like = Like.find_or_initialize_by(:likeable=>comment,:user_id=>current_user.id)
 if like.like
 like.destroy
 else
 like.like= true
 like.save
 end
 end
 def self.create_dislike(comment, current_user)
 like = Like.find_or_initialize_by(:likeable=>comment,:user_id=>current_user.id)
 if like.like==false
 like.destroy
 else
 like.like= false
 like.save
 end
 end
end
