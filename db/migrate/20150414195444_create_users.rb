class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :image_url
      t.text :message

      t.timestamps
    end
  end
end
