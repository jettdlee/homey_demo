class AddStatusRefToProject < ActiveRecord::Migration[7.2]
  def change
    add_reference(:statuses, :project, null: false, foreign_key: true)
  end
end
