class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.string :title
      t.text :remarks
      t.text :answer_1
      t.text :answer_2
      t.text :answer_3
      t.text :answer_4
      t.text :answer_5
      t.text :question_1
      t.text :question_2
      t.text :question_3
      t.text :question_4
      t.text :question_5
      t.integer :character_limit_1
      t.integer :character_limit_2
      t.integer :character_limit_3
      t.integer :character_limit_4
      t.integer :character_limit_5
    

      t.timestamps
    end
  end
end
