class CreateAverages < ActiveRecord::Migration
  def change
    create_table :averages do |t|

      t.timestamps null: false
    end
  end
end
