class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :name
      t.text :secret_value

      t.timestamps null: false
    end
  end
end
