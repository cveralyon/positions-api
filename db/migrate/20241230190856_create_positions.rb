class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.integer :client_id
      t.string :title
      t.text :description
      t.integer :hiring_number
      t.string :work_mode
      t.string :location
      t.decimal :salary
      t.text :benefits
      t.string :status

      t.timestamps
    end
  end
end
