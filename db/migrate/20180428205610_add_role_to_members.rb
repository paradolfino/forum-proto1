class AddRoleToMembers < ActiveRecord::Migration[5.2]
  def change
    add_reference :members, :role, foreign_key: true
  end
end
