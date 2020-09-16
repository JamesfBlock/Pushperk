class RemoveOldOrderedById < ActiveRecord::Migration[6.0]
  def change
        remove_column :orders, :ordered_by_id
  end
end
