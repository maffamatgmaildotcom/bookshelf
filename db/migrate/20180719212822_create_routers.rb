class CreateRouters < ActiveRecord::Migration[5.2]
  def change
    create_table :routers do |t|
      t.string :address
      t.string :username
      t.string :location
      t.string :model
      t.text :description
      t.boolean :wireless
      t.boolean :wired
      t.boolean :dhcp

      t.timestamps
    end
  end
end
