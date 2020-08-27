class AddNullCheckToPeople < ActiveRecord::Migration[5.2]
  def change
    change_column :people, :name, :string, null: false
    change_column :people, :house_id, :integer, null: false
  end
end
