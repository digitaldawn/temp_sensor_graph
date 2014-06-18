class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.float :temperature

      t.timestamps
    end
  end
end
