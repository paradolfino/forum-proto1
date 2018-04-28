class AddSlugToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :slug, :string, unique: true
  end
end
