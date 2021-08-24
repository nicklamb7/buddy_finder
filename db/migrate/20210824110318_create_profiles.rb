class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.text :bio
      t.string :interests
      t.string :picture
      t.string :location
      t.date :birth_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
