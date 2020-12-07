class ChangeDataPurposeToReservation < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :purpose, :integer
  end
end
