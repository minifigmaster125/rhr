class RemovePhotoFromMembers < ActiveRecord::Migration
  def up
    remove_column :members, :photo
      end

  def down
    add_column :members, :photo, :bytea
  end
end
