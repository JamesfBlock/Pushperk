class AddAdminToUser < ActiveRecord::Migration[6.0]
  def change
        add_column :users, :isAdmin, :boolean

  end
end
