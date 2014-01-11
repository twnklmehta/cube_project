class AddFieldsToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :firstname, :string
    add_column :teachers, :lastname, :string
    add_column :teachers, :address, :text
    add_column :teachers, :phonenumber, :integer, :limit => 10, :null =>false
    add_column :teachers, :f_h_name, :string
    add_column :teachers, :qualification, :string
    add_column :teachers, :specialization, :string
    add_column :teachers, :date_of_birth, :date
    add_column :teachers, :date_of_joining, :date
    add_column :teachers, :awards, :text
    add_column :teachers, :experience, :string
  end
end
