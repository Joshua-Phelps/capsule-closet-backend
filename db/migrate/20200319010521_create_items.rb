class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :category
      t.string :sub_category
      t.string :color
      t.string :size
      t.string :brand
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
