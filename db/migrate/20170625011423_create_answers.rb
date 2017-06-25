class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :result
      t.references :question
      t.references :user
      
      t.timestamps null: false
    end
  end
end
