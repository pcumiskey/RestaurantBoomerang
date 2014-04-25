class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :timelag
      t.string :message
      t.string :type
      t.references :programme, index: true

      t.timestamps
    end
  end
end
