class AddHideMembersToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :hide_members, :boolean
  end
end
