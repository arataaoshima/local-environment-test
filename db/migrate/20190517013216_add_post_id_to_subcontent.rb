class AddPostIdToSubcontent < ActiveRecord::Migration[5.0]
  def change
    add_column :subcontents, :post_id, :integer
  end
end
