class CreateTutors < ActiveRecord::Migration[6.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :email
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
