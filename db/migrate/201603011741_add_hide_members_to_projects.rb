class AddHideMembersToProjects < ActiveRecord::Migration[4.2]
  def change
    add_column :projects, :hide_members, :boolean
  end
end
