class AddAssocToUsers < ActiveRecord::Migration
  def change
    add_column :users, :assoc_id, :integer
  end
end
