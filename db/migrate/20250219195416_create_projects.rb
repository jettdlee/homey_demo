class CreateProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :projects do |t|
      t.timestamps
      t.string :name, null: false
      t.text :description
    end
  end
end
