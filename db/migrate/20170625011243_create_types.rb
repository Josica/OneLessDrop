class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.integer :value, {null: false}

      t.timestamps null: false
    end
  end
end
