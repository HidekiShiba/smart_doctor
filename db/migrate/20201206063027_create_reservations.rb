class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      
      t.date :reservation_date,      null: false
      t.time :reservation_time,      null: false
      t.integer :consultation_count, null: false
      
      t.string :tel,                 null: false, default: ""
      
      t.string :symptoms,            null: false, default: ""
      t.string :body_parts,          null: false, default: ""
      t.date :starting_point,        null: false
      
      t.integer :treatment,          null: false
      t.string :prescription,                     default: ""
      t.integer :side_effects,                    default: ""
      
      t.string :other_diseases,                   default: ""
      t.string :hospital_name,                    default: ""
      
      t.integer :pregnancy,          null: false
      
      t.integer :purpose,            null: false
      
      t.string :request,             null: false, default: ""
      
      t.integer :user_id,            null: false
      
      t.timestamps
    end
  end
end