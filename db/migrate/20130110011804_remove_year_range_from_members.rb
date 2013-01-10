class RemoveYearRangeFromMembers < ActiveRecord::Migration
  def up
    remove_column :members, :year_range
      end

  def down
    add_column :members, :year_range, :int4range
  end
end
