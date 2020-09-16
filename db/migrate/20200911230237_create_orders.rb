class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :campaign, null: false, foreign_key: true
      t.date :order_date
      t.string :status
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :city
      t.string :county
      t.string :country
      t.string :postcode

      t.timestamps
    end
  end
end
