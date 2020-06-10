class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.text :content
      t.integer :point

      t.timestamps
    end
  end
end
