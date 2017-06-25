class CreateAnswerUsers < ActiveRecord::Migration
  def change
    create_table :answer_users do |t|
      t.references :user
      t.references :answer 
      t.timestamps null: false
    end
  end
end
