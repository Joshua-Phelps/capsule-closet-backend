class AddAvatarToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :avatar, :string
  end
end
