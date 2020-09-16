class RemoveOldOrderedBy < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :ordered_by
  end
end
