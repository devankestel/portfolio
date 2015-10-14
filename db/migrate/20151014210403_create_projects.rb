class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.attachment :screenshot
      t.attachment :icon
      t.string :title
      t.string :summary
      t.attachment :screencast
      t.string :description

      t.timestamps null: false
    end
  end
end
