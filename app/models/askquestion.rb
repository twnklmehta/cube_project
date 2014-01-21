class Askquestion < ActiveRecord::Base
has_many :comments
validates_presence_of :title,:question,:subject

end
