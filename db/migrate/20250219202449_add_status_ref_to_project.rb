class AddStatusRefToProject < ActiveRecord::Migration[7.2]
  def change
    add_reference(:projects, :status, null: false, foreign_key: true)
  end
end
