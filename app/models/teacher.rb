class Teacher < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         validates_presence_of :firstname, :message => "is must."

         validates_presence_of :lastname, :message => "is needed."

         #validates_presence_of :teacherid, :message => "is needed"
         validates_uniqueness_of :teacherid, :message => "must be unique"
         #validates_presence_of :gender, :message => " is must"
         #validates_presence_of :address
         #validates_presence_of :phonenumber
         #validates_presence_of :f_h_name
         #validates_presence_of :qualification
         #validates_presence_of :specialization
         #validates_presence_of :experience
  			
end
