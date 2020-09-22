class CreatePhrasesLists < ActiveRecord::Migration[6.0]
  def change
    create_table :phrases_lists do |t|
      t.references :phrase, foreign_key: true
      t.references :list, foreign_key: true

      t.timestamps 
    end
  end
end
