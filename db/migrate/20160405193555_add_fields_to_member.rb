class AddFieldsToMember < ActiveRecord::Migration
  def change
    add_column :members, :name, :string
    add_column :members, :avatar, :string
    add_column :members, :bio, :text
  end
end
