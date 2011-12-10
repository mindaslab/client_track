class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :content
      t.references :client

      t.timestamps
    end
    add_index :notes, :client_id
  end
end
