class CreateTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :teams do |t|
      t.text :name
      t.string :city

      t.timestamps
    end
  end
end
