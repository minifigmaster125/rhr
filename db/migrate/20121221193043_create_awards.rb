class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :name
      t.integer :year_id

      t.timestamps
    end
  end
end
