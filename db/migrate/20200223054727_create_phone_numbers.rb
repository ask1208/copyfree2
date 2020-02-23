class CreatePhoneNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_numbers do |t|
      t.integer :phone_number, null: false, unique: true
      t.timestamps
    end
  end
end
