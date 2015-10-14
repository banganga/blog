class AddPopularityToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :popularity, :integer
    add_index :posts, :popularity
  end
end
