class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.string :name
      t.string :objective
      t.string :target
      t.string :string
      t.references :boomerang, index: true

      t.timestamps
    end
  end
end
