class AddColumnToDresser < ActiveRecord::Migration[7.0]
  def change
    add_column :dressers, :description, :string
  end
end
