class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :event
      t.string :start_time
      t.string :end_time
      t.references :location
      t.timestamps
    end
  end
end
