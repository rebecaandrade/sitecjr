class CreateStatusNegociations < ActiveRecord::Migration
  def change
    create_table :status_negociations do |t|
      t.string :status
      t.string :firstNegociator
      t.string :secondNegociator
      t.text :log
      t.string :linkProposta
      t.text :descriptionNegociation

      t.timestamps null: false
    end
  end
end
