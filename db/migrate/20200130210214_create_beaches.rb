class CreateBeaches < ActiveRecord::Migration[6.0]
  def change
    create_table :beaches do |t|
      t.string :name
      t.float :temp
      t.float :weather
      t.float :pollution
      t.float :surf
      t.string :address

      t.timestamps
    end
  end
end
