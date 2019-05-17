class RenameTypeOnSubcontent < ActiveRecord::Migration[5.0]
  def change
    rename_column :subcontents, :type, :content_type
  end
  end
