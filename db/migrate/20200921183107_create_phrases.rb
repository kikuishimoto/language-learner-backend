class CreatePhrases < ActiveRecord::Migration[6.0]
  def change
    create_table :phrases do |t|
      t.string :content
      t.string :image
      t.string :pinyin
      t.belongs_to :lists

      t.timestamps
    end
  end
end
