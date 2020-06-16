class CreateWoods < ActiveRecord::Migration[5.2]
  def change
    create_table :woods do |t|
      t.string :name
      t.references :drum, foreign_key: true

      t.timestamps
    end
  end
end
