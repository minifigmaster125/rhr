class AddDurationToMembers < ActiveRecord::Migration
  def change
    add_column :members, :duration, :integer

  end
end
