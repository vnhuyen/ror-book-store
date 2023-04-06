class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :author
      t.float :price

      t.timestamps
    end
  end
end
