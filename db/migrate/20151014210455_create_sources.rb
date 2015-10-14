class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :title
      t.string :website
      t.string :profile

      t.timestamps null: false
    end
  end
end
