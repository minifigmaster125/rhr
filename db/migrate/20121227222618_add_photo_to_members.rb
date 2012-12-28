class AddPhotoToMembers < ActiveRecord::Migration
  def change
    add_column :members, :photo, :bytea

  end
end
