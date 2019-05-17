class AddContentTypeToSubcontent < ActiveRecord::Migration[5.0]
  def change
    add_column :subcontents, :type, :string
  end
end
