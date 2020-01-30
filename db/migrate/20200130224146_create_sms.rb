class CreateSms < ActiveRecord::Migration[6.0]
  def change
    create_table :sms do |t|
      t.string :to
      t.string :from
      t.string :text

      t.timestamps
    end
  end
end
