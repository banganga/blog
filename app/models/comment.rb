class Comment < ActiveRecord::Base
  belongs_to :post, counter_cache: :comments_count
  
  before_save :increase_post_popularity
 
  private
 
  def increase_post_popularity
    self.post.increase_popularity 10
  end
end
