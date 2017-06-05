class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
