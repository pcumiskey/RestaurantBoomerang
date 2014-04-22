class CreateBoomerangs < ActiveRecord::Migration
  def change
    create_table :boomerangs do |t|
      t.string :name
      t.string :email
      t.string :tel_no
      t.string :fb_page
      t.string :header_file
      t.string :contact_name
      t.string :string

      t.timestamps
    end
  end
end
