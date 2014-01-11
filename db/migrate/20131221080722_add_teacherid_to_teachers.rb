class AddTeacheridToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :teacherid, :integer
  end
end
