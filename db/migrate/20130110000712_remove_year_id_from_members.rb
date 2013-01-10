class RemoveYearIdFromMembers < ActiveRecord::Migration
  def up
    remove_column :members, :year_id
      end

  def down
    add_column :members, :year_id, :integer
  end
end
