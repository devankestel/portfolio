class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :start_year
      t.integer :end_year
      t.string :title
      t.string :description
      t.attachment :image
      t.string :category

      t.timestamps null: false
    end
  end
end
