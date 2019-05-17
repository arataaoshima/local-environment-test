class CreateSubcontents < ActiveRecord::Migration[5.0]
  def change
    create_table :subcontents do |t|
      t.string :tilte
      t.text :content

      t.timestamps
    end
  end
end
