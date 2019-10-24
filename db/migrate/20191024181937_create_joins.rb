class CreateJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :joins do |t|
      t.references :stroll, index: true
      t.references :dog, index: true  
      t.timestamps
    end
  end
end
