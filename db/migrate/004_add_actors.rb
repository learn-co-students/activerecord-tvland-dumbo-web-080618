class CreateActors < ActiveRecord::Migration[4.2]
  create_table :actors do |t|
    t.string :name
    t.integer :show_id
  end
end
