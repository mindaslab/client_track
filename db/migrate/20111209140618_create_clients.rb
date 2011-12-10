class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :ph
      t.string :email
      t.text :address
      t.text :description

      t.timestamps
    end
  end
end
