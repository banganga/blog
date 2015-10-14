class Post < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 5 }
	has_many :comments, dependent: :destroy
	def increase_views
		views_count = self.views_count.to_i + 1
		pop = self.popularity.to_i + 2
		self.update(views_count: views_count, popularity: pop)
	end
	def increase_popularity(increment_index)
		pop = self.popularity + increment_index
		self.update(popularity: pop)
	end
end
