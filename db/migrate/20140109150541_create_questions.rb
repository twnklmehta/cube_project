class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :chapter_no
      t.string :chapter_name
      t.string :questions

      t.timestamps
    end
  end
end
