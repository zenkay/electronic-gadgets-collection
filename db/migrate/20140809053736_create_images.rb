class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :picture
      t.integer :gadget_id
      t.timestamps
    end
  end
end
