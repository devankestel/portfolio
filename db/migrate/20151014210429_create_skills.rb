class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :title
      t.attachment :badge

      t.timestamps null: false
    end
  end
end
