class CreateNegotiations < ActiveRecord::Migration
  def change
    create_table :negotiations do |t|
      t.string :name
      t.string :email
      t.string :celular
      t.string :subject
      t.text :description

      t.timestamps null: false
    end
  end
end
