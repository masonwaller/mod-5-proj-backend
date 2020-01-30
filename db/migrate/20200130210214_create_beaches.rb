class CreateBeaches < ActiveRecord::Migration[6.0]
  def change
    create_table :beaches do |t|
      t.string :name
      t.integer :temp
      t.integer :weather
      t.integer :pollution
      t.integer :surf
      t.string :address

      t.timestamps
    end
  end
end
