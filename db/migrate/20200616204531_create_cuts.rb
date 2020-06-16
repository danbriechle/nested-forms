class CreateCuts < ActiveRecord::Migration[5.2]
  def change
    create_table :cuts do |t|
      t.string :name
      t.references :wood, foreign_key: true

      t.timestamps
    end
  end
end
