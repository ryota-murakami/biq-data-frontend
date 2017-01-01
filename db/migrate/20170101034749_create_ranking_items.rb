class CreateRankingItems < ActiveRecord::Migration[5.0]
  def change
    create_table :ranking_items do |t|
      t.references :ranking, foreign_key: true
      t.references :keyword, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
