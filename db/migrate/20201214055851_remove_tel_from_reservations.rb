class RemoveTelFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :tel, :string
  end
end
