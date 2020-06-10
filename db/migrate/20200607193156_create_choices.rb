class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices do |t|
      t.string :choice
      t.integer :question_id

      t.timestamps
    end
  end
end
