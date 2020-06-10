class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :content
      t.string :is_currect
      t.integer :question_id
      t.integer :choice_id

      t.timestamps
    end
  end
end
