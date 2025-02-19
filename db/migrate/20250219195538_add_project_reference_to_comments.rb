class AddProjectReferenceToComments < ActiveRecord::Migration[7.2]
  def change
    add_reference(:comments, :project, index: true, foreign_key: true)
  end
end
