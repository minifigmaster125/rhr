class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.integer :yearno
      t.text :robinfo

      t.timestamps
    end
  end
end
