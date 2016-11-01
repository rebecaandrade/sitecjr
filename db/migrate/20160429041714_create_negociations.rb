class CreateNegociations < ActiveRecord::Migration
  def change
    create_table :negociations do |t|
      t.string :name
      t.string :subject
      t.text :description

      t.timestamps null: false
    end
  end
end
