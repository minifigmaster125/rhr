class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.text :bio
      t.integer :year_id

      t.timestamps
    end
  end
end
