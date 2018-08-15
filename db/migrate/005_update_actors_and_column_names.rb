class UpdateActorsAndColumnNames < ActiveRecord::Migration[4.2]
  def change
    rename_column :actors, :name, :first_name
    add_column :actors, :last_name, :string

  end
end
