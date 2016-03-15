class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :firstname
      t.string :lastname
      t.string :birthday
      t.references :position, index: true, foreign_key: true
      t.integer :number
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
