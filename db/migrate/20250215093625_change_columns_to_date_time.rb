class ChangeColumnsToDateTime < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :start_date
    remove_column :bookings, :end_date
    add_column :bookings, :start_date, :datetime
    add_column :bookings, :end_date, :datetime
  end
end
