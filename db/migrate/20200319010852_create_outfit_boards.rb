class CreateOutfitBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :outfit_boards do |t|
      t.references :outfit, null: false, foreign_key: true
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
