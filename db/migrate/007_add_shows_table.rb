class AddShowsTable < ActiveRecord::Migration[4.2]
  def change
    remove_column(:shows, :netword_id)
    add_column :shows, :day, :string
    add_column :shows, :season, :string

  end
end
