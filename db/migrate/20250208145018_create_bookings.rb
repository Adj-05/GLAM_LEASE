class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :start_date
      t.integer :end_date
      t.integer :total_price
      t.references :user
      t.references :clothe
      t.string :status


      t.timestamps
    end
  end
end
