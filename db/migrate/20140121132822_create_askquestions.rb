class CreateAskquestions < ActiveRecord::Migration
  def change
    create_table :askquestions do |t|
      t.string :title
      t.text :question
      t.string :subject

      t.timestamps
    end
  end
end
