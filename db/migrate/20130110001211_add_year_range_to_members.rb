class AddYearRangeToMembers < ActiveRecord::Migration
  def change
    add_column :members, :year_range, :int4range

  end
end
