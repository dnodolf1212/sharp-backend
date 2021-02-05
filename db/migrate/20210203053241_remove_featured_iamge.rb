class RemoveFeaturedIamge < ActiveRecord::Migration[6.0]
  def change
    remove_column :knives, :featured_image, :string
  end
end
