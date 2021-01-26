class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :nickname,       null: false
      t.string :first_name,     null: false
      t.string :family_name,    null: false
      t.integer :phone_number,  null: false
      t.date   :birthday,       null: false
      t.text :introduction
      t.references :user,        null: false,foreign_key: true

      t.timestamps
    end
  end
end
