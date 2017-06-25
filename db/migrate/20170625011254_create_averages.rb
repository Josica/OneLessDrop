class CreateAverages < ActiveRecord::Migration
  def change
    create_table :averages do |t|
      t.integer :bath, {null: false}
      t.integer :shower, {null: false}
      t.integer :toilet, {null: false}
      t.integer :dishes, {null: false}
      t.integer :toothbrush, {null: false}
      t.integer :car, {null: false}
      t.integer :garden, {null: false}
      t.integer :laundry, {null: false}
      t.integer :cooking, {null: false}
      
      t.timestamps null: false
    end
  end
end
