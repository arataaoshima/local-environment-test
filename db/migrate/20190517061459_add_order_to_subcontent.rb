class AddOrderToSubcontent < ActiveRecord::Migration[5.0]
  def change
    add_column :subcontents, :content_order, :integer
  end
end
