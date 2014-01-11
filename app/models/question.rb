class Question < ActiveRecord::Base
	def self.search(search)
		if search
		where 'chapter_name LIKE ?', "%#{search}%"
	else
		scoped
	end
end
end
