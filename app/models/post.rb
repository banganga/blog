class Post < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 5 }
	has_many :comments, dependent: :destroy
end
class Popularity < ActiveRecord::Base
	popularity :integer
	popularity == post.views_count + comments.comments_count
end