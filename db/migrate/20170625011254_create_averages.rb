class CreateAverages < ActiveRecord::Migration
  def change
    create_table :averages do |t|
      t.string :name, {null: false}
      t.integer :value, {null: false}


      t.timestamps null: false
    end
  end
end
