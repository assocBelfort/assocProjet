class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.string :nom
      t.integer :president_id
      t.string :descriptif

      t.timestamps
    end
  end
end
