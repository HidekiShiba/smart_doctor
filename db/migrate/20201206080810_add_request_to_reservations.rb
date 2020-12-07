class AddRequestToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :request, :string
  end
end
