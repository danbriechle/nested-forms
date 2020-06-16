class CreateDrums < ActiveRecord::Migration[5.2]
  def change
    create_table :drums do |t|
      t.string :size

      t.timestamps
    end
  end
end
