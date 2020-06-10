class CreateUserexamrecords < ActiveRecord::Migration[6.0]
  def change
    create_table :userexamrecords do |t|
      t.integer :survey_id
      t.integer :user_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :marks

      t.timestamps
    end
  end
end
